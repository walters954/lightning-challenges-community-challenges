# Contributing to Lightning Challenges

Thank you for your interest in contributing to Lightning Challenges! This guide provides detailed instructions for contributing high-quality coding challenges to our community.

## 🎯 Quick Start

1. **Fork & Clone**: Fork this repository and clone it locally
2. **Setup Profile**: Create your contributor profile in `contributors/your-username/`
3. **Create Challenge**: Use the template in `templates/challenge-template/`
4. **Test Everything**: Ensure your template fails and solution passes
5. **Submit PR**: Create a pull request with your contribution

## 📋 Detailed Contribution Process

### Step 1: Repository Setup

```bash
# Fork the repository on GitHub, then:
git clone https://github.com/YOUR_USERNAME/lightning-challenges-community-challenges.git
cd lightning-challenges-community-challenges

# Create a new branch for your contribution
git checkout -b add-challenge-XXX-challenge-name
```

### Step 2: Create Your Contributor Profile

If this is your first contribution:

1. Create your profile directory:

    ```bash
    mkdir contributors/your-github-username
    ```

2. Copy and fill out the profile template:

    ```bash
    cp contributors/_template/profile.json contributors/your-github-username/profile.json
    ```

3. Update the profile with your information:
    - GitHub username (must match your actual username)
    - Display name and bio
    - Professional links (LinkedIn, Trailhead, etc.)
    - Areas of expertise
    - Salesforce certifications

### Step 3: Choose a Challenge Number

1. Check existing challenges in `force-app/main/` to see what numbers are taken
2. Choose the next available number in sequence
3. If you're unsure, create an issue asking for number assignment

### Step 4: Create Your Challenge

1. Copy the challenge template:

    ```bash
    cp -r templates/challenge-template force-app/main/your-username/XXX-challenge-name/
    ```

2. Rename the files appropriately:
    - `challenge-description.md` → `challenge-name.md`
    - `ChallengeTemplate.cls` → `YourChallengeNameTemplate.cls`
    - `ChallengeSolution.cls` → `YourChallengeNameSolution.cls`
    - Update the corresponding `.cls-meta.xml` files

3. Update the challenge description (`challenge-name.md`):
    - Clear problem statement
    - Multiple examples with explanations
    - Requirements and constraints
    - Helpful hints
    - Appropriate difficulty level
    - Learning objectives

### Step 5: Implement the Code

#### Template Implementation

- Replace the sample method with your actual method signature
- Keep the implementation minimal (return null or default values)
- Update all test methods to match your problem
- Ensure the template compiles but tests fail

#### Solution Implementation

- Use the exact same method signature as the template
- Implement the complete, working solution
- Handle all edge cases (null inputs, empty collections, etc.)
- Follow Apex best practices

#### Testing Requirements

- Minimum 6 test cases covering:
    - Basic functionality (2-3 tests)
    - Edge cases (2-3 tests)
    - Error conditions (1-2 tests)
- Clear, descriptive test messages
- Proper use of the testing framework

### Step 6: Test Your Challenge

#### Test the Template (Should Fail)

```bash
cat force-app/main/your-username/XXX-challenge-name/YourChallengeNameTemplate.cls | sfdx force:apex:execute
```

Expected result: Tests should fail with meaningful error messages.

#### Test the Solution (Should Pass)

```bash
cat force-app/main/your-username/XXX-challenge-name/YourChallengeNameSolution.cls | sfdx force:apex:execute
```

Expected result: All tests should pass with `"pass":true`.

### Step 7: Submit Your Contribution

1. **Commit your changes**:

    ```bash
    git add .
    git commit -m "Add Challenge #XXX: Challenge Name by @your-username"
    ```

2. **Push to your fork**:

    ```bash
    git push origin add-challenge-XXX-challenge-name
    ```

3. **Create a Pull Request**:
    - Use the title format: `Add Challenge #XXX: Challenge Name by @username`
    - Include a description of what the challenge teaches
    - Add appropriate labels (difficulty, topics)
    - Include test results showing template fails and solution passes

## 🎨 Challenge Design Guidelines

### Problem Selection

- **Educational Value**: Focus on teaching important Apex concepts
- **Real-world Relevance**: Base challenges on actual Salesforce scenarios
- **Appropriate Difficulty**: Match complexity to the stated difficulty level
- **Unique Content**: Avoid duplicating existing challenges

### Difficulty Levels

#### Easy Challenges

- Basic Apex syntax and concepts
- Simple data manipulation
- Straightforward logic
- Minimal edge cases

#### Medium Challenges

- Multiple steps or conditions
- Collection manipulation
- String processing
- Some algorithmic thinking

#### Hard Challenges

- Complex algorithms
- Advanced data structures
- Performance optimization
- Multiple interacting components

### Code Quality Standards

#### Apex Best Practices

- Use single quotes for strings: `'value'`
- Proper null checking: `if (input == null) return null;`
- Meaningful variable names: `accountsById` not `m`
- Avoid reserved words as variables
- Use appropriate collection types

#### Documentation

- Clear JavaDoc comments for all methods
- Explain complex logic with inline comments
- Document any assumptions or limitations
- Include parameter and return value descriptions

#### Testing

- Comprehensive test coverage
- Clear, descriptive test messages
- Use the standard testing framework
- Test both success and failure scenarios

## 🔍 Review Process

### Automated Checks

- File structure validation
- Code compilation checks
- Test execution verification
- Metadata validation

### Manual Review

- Code quality assessment
- Challenge difficulty verification
- Educational value evaluation
- Documentation completeness

### Feedback and Iteration

- Reviewers will provide constructive feedback
- Address all requested changes
- Re-run tests after modifications
- Update documentation as needed

## 🌟 Recognition

Contributors will receive:

- Profile page on the Lightning Challenges website
- Credit on challenge pages
- Contributor statistics and badges
- Links to professional profiles
- Community recognition

## 📞 Getting Help

- **Questions**: Open a GitHub Discussion
- **Issues**: Report bugs via GitHub Issues
- **Templates**: Use the provided templates and examples
- **Examples**: Study existing challenges for reference

## 🚫 Common Mistakes to Avoid

1. **Incorrect File Structure**: Follow the exact naming conventions
2. **Missing Tests**: Always include comprehensive test coverage
3. **Template Solutions**: Template should not contain working solutions
4. **Inconsistent Signatures**: Template and solution must have identical method signatures
5. **Poor Documentation**: Always include clear descriptions and examples
6. **Skipping Edge Cases**: Handle null inputs and boundary conditions
7. **Wrong Difficulty**: Ensure complexity matches the stated difficulty level

## 📚 Resources

- [Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/)
- [Apex Best Practices](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_best_practices.htm)
- [Salesforce CLI Setup](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/)
- [Existing Challenge Examples](force-app/main/)

---

Ready to contribute? Start with the [challenge template](../templates/challenge-template/) and create something amazing! 🚀
