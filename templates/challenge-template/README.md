# Challenge Template

This template provides the structure for creating new Lightning Challenges. Follow these steps to create your challenge:

## 📋 Setup Steps

1. **Copy the Template**

    ```bash
    cp -r templates/challenge-template force-app/main/YOUR_USERNAME/CHALLENGE_NUMBER-challenge-name/
    ```

2. **Rename Files**
    - `challenge-description.md` → `CHALLENGE_NUMBER-challenge-name.md`
    - `ChallengeTemplate.cls` → `YourChallengeNameTemplate.cls`
    - `ChallengeSolution.cls` → `YourChallengeNameSolution.cls`
    - `ChallengeTest.cls` → `YourChallengeNameTest.cls`
    - Update corresponding `.cls-meta.xml` files

3. **Update the Challenge Description**
   Edit `CHALLENGE_NUMBER-challenge-name.md` with:
    - Challenge number and title
    - Problem description
    - Examples with input/output
    - Hints
    - Difficulty level
    - Your author information

4. **Implement the Template**
   In `YourChallengeNameTemplate.cls`:
    - Replace `sampleMethod` with your actual method signature
    - Update JavaDoc comments
    - Keep the method body minimal with TODO comments
    - Return null or default values

5. **Implement the Solution**
   In `YourChallengeNameSolution.cls`:
    - Use the same method signature as the template
    - Implement the complete, working solution
    - Include proper error handling and edge cases

6. **Update the Tests**
   In `YourChallengeNameTest.cls`:
    - Update test methods to match your implementation
    - Test various scenarios including edge cases
    - Ensure tests pass when run against the solution

## 🧪 Testing Your Challenge

Run tests using the Salesforce CLI or VS Code Test Runner:

```bash
sfdx force:apex:test:run -t YourChallengeNameTest
```

## 📝 Template Structure

```
challenge-template/
├── challenge-description.md          # Challenge description template
├── ChallengeTemplate.cls            # Template with incomplete implementation
├── ChallengeTemplate.cls-meta.xml   # Metadata for template
├── ChallengeSolution.cls            # Complete solution
├── ChallengeSolution.cls-meta.xml   # Metadata for solution
├── ChallengeTest.cls                # Test class
├── ChallengeTest.cls-meta.xml       # Metadata for test class
└── README.md                        # This file
```

## ✅ Quality Checklist

Before submitting your challenge:

- [ ] Challenge description is clear and comprehensive
- [ ] Examples demonstrate the problem well
- [ ] Template compiles but has incomplete implementation
- [ ] Solution implements complete, working logic
- [ ] Test class covers multiple scenarios and edge cases
- [ ] All tests pass when run against the solution
- [ ] Code follows Apex best practices
- [ ] JavaDoc comments are accurate and helpful
- [ ] Method signatures match between template and solution

## 🎯 Best Practices

### Challenge Design

- **Start Simple**: Begin with basic functionality, then add complexity
- **Real-world Relevance**: Base challenges on actual Salesforce scenarios
- **Progressive Difficulty**: Ensure difficulty matches the stated level
- **Clear Examples**: Provide multiple examples showing different scenarios

### Code Quality

- **Null Safety**: Always handle null inputs appropriately
- **Edge Cases**: Test boundary conditions and special cases
- **Performance**: Consider efficiency for larger inputs
- **Readability**: Write clean, well-documented code

### Testing

- **Comprehensive Coverage**: Test normal cases, edge cases, and error conditions
- **Clear Messages**: Test failure messages should be descriptive
- **Separate Test Class**: Use @isTest annotation and Assert methods
- **Minimum Tests**: Include at least 6 different test scenarios

## 🚀 Next Steps

1. Create your challenge using this template
2. Test thoroughly with both template and solution
3. Add your contributor profile if you haven't already
4. Submit a pull request with your complete challenge
5. Respond to any feedback during the review process

Happy coding! 🎉
