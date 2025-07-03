#!/bin/bash

# Lightning Challenges - Challenge Validation Script
# This script helps validate that a challenge follows the repository standards

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Function to check if a file exists
check_file() {
    local file=$1
    local description=$2
    
    if [ -f "$file" ]; then
        print_status $GREEN "✓ $description found: $file"
        return 0
    else
        print_status $RED "✗ $description missing: $file"
        return 1
    fi
}

# Function to validate challenge structure
validate_challenge() {
    local challenge_dir=$1
    local errors=0
    
    print_status $BLUE "Validating challenge in: $challenge_dir"
    echo
    
    # Check if directory exists
    if [ ! -d "$challenge_dir" ]; then
        print_status $RED "✗ Challenge directory not found: $challenge_dir"
        return 1
    fi
    
    # Extract challenge name from directory
    local dir_name=$(basename "$challenge_dir")
    local challenge_name=$(echo "$dir_name" | sed 's/^[0-9]*-//' | sed 's/-/ /g' | sed 's/\b\w/\U&/g' | sed 's/ //g')
    
    # Check required files
    print_status $YELLOW "Checking required files..."
    
    # Markdown file
    local md_file="$challenge_dir/$(echo "$dir_name" | sed 's/^[0-9]*-//').md"
    if ! check_file "$md_file" "Challenge description"; then
        ((errors++))
    fi
    
    # Template files
    local template_cls="$challenge_dir/${challenge_name}Template.cls"
    local template_meta="$challenge_dir/${challenge_name}Template.cls-meta.xml"
    
    if ! check_file "$template_cls" "Template class"; then
        ((errors++))
    fi
    
    if ! check_file "$template_meta" "Template metadata"; then
        ((errors++))
    fi
    
    # Solution files
    local solution_cls="$challenge_dir/${challenge_name}Solution.cls"
    local solution_meta="$challenge_dir/${challenge_name}Solution.cls-meta.xml"
    
    if ! check_file "$solution_cls" "Solution class"; then
        ((errors++))
    fi
    
    if ! check_file "$solution_meta" "Solution metadata"; then
        ((errors++))
    fi
    
    echo
    
    # Test compilation
    print_status $YELLOW "Testing compilation..."
    
    if [ -f "$template_cls" ]; then
        print_status $BLUE "Testing template compilation..."
        if sfdx force:apex:execute -f "$template_cls" >/dev/null 2>&1; then
            print_status $GREEN "✓ Template compiles successfully"
        else
            print_status $RED "✗ Template compilation failed"
            ((errors++))
        fi
    fi
    
    if [ -f "$solution_cls" ]; then
        print_status $BLUE "Testing solution compilation..."
        if sfdx force:apex:execute -f "$solution_cls" >/dev/null 2>&1; then
            print_status $GREEN "✓ Solution compiles successfully"
        else
            print_status $RED "✗ Solution compilation failed"
            ((errors++))
        fi
    fi
    
    echo
    
    # Test execution
    print_status $YELLOW "Testing challenge execution..."
    
    if [ -f "$template_cls" ]; then
        print_status $BLUE "Testing template (should fail)..."
        local template_output=$(cat "$template_cls" | sfdx force:apex:execute 2>&1 || true)
        if echo "$template_output" | grep -q '"pass":false'; then
            print_status $GREEN "✓ Template tests fail as expected"
        else
            print_status $RED "✗ Template tests should fail but don't"
            ((errors++))
        fi
    fi
    
    if [ -f "$solution_cls" ]; then
        print_status $BLUE "Testing solution (should pass)..."
        local solution_output=$(cat "$solution_cls" | sfdx force:apex:execute 2>&1 || true)
        if echo "$solution_output" | grep -q '"pass":true'; then
            print_status $GREEN "✓ Solution tests pass as expected"
        else
            print_status $RED "✗ Solution tests should pass but don't"
            ((errors++))
        fi
    fi
    
    echo
    
    # Summary
    if [ $errors -eq 0 ]; then
        print_status $GREEN "🎉 Challenge validation successful! No errors found."
        return 0
    else
        print_status $RED "❌ Challenge validation failed with $errors error(s)."
        return 1
    fi
}

# Main script
main() {
    echo "Lightning Challenges - Challenge Validation Script"
    echo "=================================================="
    echo
    
    # Check if Salesforce CLI is installed
    if ! command -v sfdx &> /dev/null; then
        print_status $RED "❌ Salesforce CLI (sfdx) is not installed or not in PATH"
        echo "Please install Salesforce CLI: https://developer.salesforce.com/tools/sfdxcli"
        exit 1
    fi
    
    # Check if challenge directory is provided
    if [ $# -eq 0 ]; then
        print_status $YELLOW "Usage: $0 <challenge-directory>"
        echo
        print_status $BLUE "Example: $0 force-app/main/username/123-string-manipulation"
        echo
        print_status $BLUE "Or validate all challenges for a user:"
        print_status $BLUE "Example: $0 force-app/main/username"
        exit 1
    fi
    
    local target_path=$1
    
    # Check if target is a specific challenge or user directory
    if [ -d "$target_path" ]; then
        # Check if it's a user directory (contains multiple challenges)
        if ls "$target_path"/*/ 1> /dev/null 2>&1; then
            print_status $BLUE "Validating all challenges in: $target_path"
            echo
            
            local total_errors=0
            local challenge_count=0
            
            for challenge_dir in "$target_path"/*/; do
                if [ -d "$challenge_dir" ]; then
                    validate_challenge "$challenge_dir"
                    local result=$?
                    total_errors=$((total_errors + result))
                    challenge_count=$((challenge_count + 1))
                    echo
                fi
            done
            
            echo "=================================================="
            print_status $BLUE "Validation Summary:"
            print_status $BLUE "Total challenges validated: $challenge_count"
            
            if [ $total_errors -eq 0 ]; then
                print_status $GREEN "🎉 All challenges passed validation!"
            else
                print_status $RED "❌ $total_errors challenge(s) failed validation"
                exit 1
            fi
        else
            # Single challenge directory
            validate_challenge "$target_path"
            exit $?
        fi
    else
        print_status $RED "❌ Directory not found: $target_path"
        exit 1
    fi
}

# Run main function with all arguments
main "$@" 