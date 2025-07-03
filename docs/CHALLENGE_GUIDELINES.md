# Challenge Creation Guidelines

This document provides comprehensive guidelines for creating high-quality Lightning Challenges that provide educational value and follow consistent standards.

## 🎯 Challenge Design Principles

### Educational Focus

Every challenge should teach specific Apex concepts or Salesforce development skills:

- **Concept Reinforcement**: Challenges should reinforce important programming concepts
- **Practical Application**: Problems should relate to real Salesforce development scenarios
- **Skill Building**: Each challenge should build upon previous knowledge
- **Best Practices**: Demonstrate proper Apex coding practices

### Difficulty Progression

Challenges should be appropriately categorized by difficulty:

#### Easy (Beginner Level)

- **Target Audience**: New to Apex or programming
- **Concepts**: Basic syntax, simple logic, primitive data types
- **Complexity**: Single method, straightforward logic
- **Examples**: String manipulation, basic math, simple conditionals

#### Medium (Intermediate Level)

- **Target Audience**: Familiar with Apex basics
- **Concepts**: Collections, loops, complex logic, error handling
- **Complexity**: Multiple steps, some algorithmic thinking
- **Examples**: List processing, Map operations, data transformation

#### Hard (Advanced Level)

- **Target Audience**: Experienced Apex developers
- **Concepts**: Advanced algorithms, optimization, complex data structures
- **Complexity**: Multi-step solutions, performance considerations
- **Examples**: Recursive algorithms, graph traversal, optimization problems

## 📝 Challenge Structure Requirements

### Problem Description

Your challenge description should include:

1. **Clear Problem Statement**
    - What needs to be solved
    - Input and output specifications
    - Any special requirements or constraints

2. **Multiple Examples**
    - At least 2-3 examples showing different scenarios
    - Clear input → output format
    - Explanations for each example

3. **Requirements Section**
    - Specific functional requirements
    - Input validation needs
    - Output format specifications

4. **Constraints**
    - Input size limitations
    - Performance requirements
    - Memory constraints (if applicable)

5. **Hints Section**
    - Helpful guidance without giving away the solution
    - Suggestions for approach or data structures
    - Common pitfalls to avoid

### Code Implementation

#### Template Requirements

- **Compilation**: Must compile without errors
- **Functionality**: Should return null or default values
- **Testing**: All tests should fail when run against template
- **Documentation**: Clear JavaDoc comments
- **Structure**: Follow the standard testing framework

#### Solution Requirements

- **Correctness**: Must solve the problem completely
- **Efficiency**: Should use reasonable algorithms and data structures
- **Edge Cases**: Handle all boundary conditions and error cases
- **Best Practices**: Follow Apex coding standards
- **Testing**: All tests should pass

### Testing Requirements

#### Test Coverage

Every challenge must include comprehensive tests:

- **Basic Functionality**: 2-3 tests covering normal operation
- **Edge Cases**: 2-3 tests for boundary conditions
- **Error Handling**: 1-2 tests for invalid inputs
- **Special Cases**: Any problem-specific scenarios

#### Test Quality

- **Clear Messages**: Descriptive failure messages
- **Comprehensive Parameters**: Include all relevant test data
- **Consistent Format**: Use the standard testing framework
- **Meaningful Names**: Test method names should describe what they test

## 🔧 Technical Standards

### Apex Coding Standards

#### Naming Conventions

- **Classes**: PascalCase (e.g., `StringManipulator`)
- **Methods**: camelCase (e.g., `processString`)
- **Variables**: camelCase (e.g., `inputString`)
- **Constants**: UPPER_CASE (e.g., `MAX_LENGTH`)

#### Code Style

- **String Literals**: Use single quotes: `'value'`
- **Null Checking**: Always check for null inputs
- **Collections**: Use appropriate collection types
- **Error Handling**: Return appropriate defaults, don't throw exceptions for validation

#### Documentation

- **JavaDoc**: All public methods must have JavaDoc comments
- **Inline Comments**: Explain complex logic
- **Parameter Documentation**: Describe all parameters
- **Return Documentation**: Describe return values

### File Structure Standards

#### Required Files

Every challenge must include:

```
XXX-challenge-name/
├── challenge-name.md
├── ChallengeNameTemplate.cls
├── ChallengeNameTemplate.cls-meta.xml
├── ChallengeNameSolution.cls
└── ChallengeNameSolution.cls-meta.xml
```

#### Naming Conventions

- **Folder**: `XXX-challenge-name` (number-kebab-case)
- **Markdown**: `challenge-name.md` (matches folder name)
- **Classes**: `ChallengeNameTemplate/Solution` (PascalCase)
- **Metadata**: Corresponding `.cls-meta.xml` files

## 🎨 Content Guidelines

### Problem Selection Criteria

#### Good Challenge Topics

- **String Processing**: Manipulation, parsing, formatting
- **Collection Operations**: Filtering, sorting, transforming
- **Data Structures**: Maps, Sets, Lists usage
- **Algorithms**: Searching, sorting, mathematical operations
- **Business Logic**: Salesforce-specific scenarios
- **Integration**: Data parsing, API responses
- **Validation**: Input checking, data integrity

#### Topics to Avoid

- **Platform-Specific Features**: Avoid DML, SOQL, or triggers
- **External Dependencies**: No callouts or external services
- **UI Components**: Focus on backend logic only
- **Complex Setup**: Avoid requiring extensive test data
- **Deprecated Features**: Use current Apex features only

### Writing Quality

#### Problem Descriptions

- **Clarity**: Use clear, concise language
- **Completeness**: Include all necessary information
- **Examples**: Provide comprehensive examples
- **Formatting**: Use proper markdown formatting
- **Grammar**: Proofread for errors

#### Code Comments

- **Helpful**: Explain the why, not just the what
- **Concise**: Keep comments brief but informative
- **Accurate**: Ensure comments match the code
- **Professional**: Use proper grammar and spelling

## 🧪 Testing Standards

### Test Design Principles

#### Comprehensive Coverage

- **Happy Path**: Test normal, expected inputs
- **Edge Cases**: Test boundary conditions
- **Error Cases**: Test invalid or unexpected inputs
- **Special Values**: Test null, empty, zero, negative values

#### Test Organization

- **Arrange-Act-Assert**: Follow the AAA pattern
- **Single Responsibility**: Each test should verify one thing
- **Descriptive Names**: Test names should describe the scenario
- **Clear Messages**: Failure messages should be helpful

### Common Test Scenarios

#### For String Methods

```apex
// Basic functionality
testBasicStringOperation()
testEmptyString()
testNullString()
testSingleCharacter()
testSpecialCharacters()
testLongString()
```

#### For Collection Methods

```apex
// Basic functionality
testBasicCollectionOperation()
testEmptyCollection()
testNullCollection()
testSingleElement()
testDuplicateElements()
testLargeCollection()
```

#### For Numeric Methods

```apex
// Basic functionality
testPositiveNumbers()
testNegativeNumbers()
testZero()
testDecimalNumbers()
testLargeNumbers()
testEdgeCases()
```

## 📊 Quality Checklist

Before submitting your challenge, verify:

### Content Quality

- [ ] Problem statement is clear and complete
- [ ] Examples are comprehensive and accurate
- [ ] Requirements are well-defined
- [ ] Hints are helpful but not spoilers
- [ ] Difficulty level is appropriate

### Code Quality

- [ ] Template compiles but returns defaults
- [ ] Solution implements complete functionality
- [ ] Both follow Apex best practices
- [ ] JavaDoc comments are accurate
- [ ] Code is well-formatted and readable

### Testing Quality

- [ ] Minimum 6 comprehensive test cases
- [ ] Tests cover normal, edge, and error cases
- [ ] Template tests fail appropriately
- [ ] Solution tests all pass
- [ ] Test messages are clear and helpful

### Technical Standards

- [ ] File structure follows conventions
- [ ] Naming conventions are consistent
- [ ] Metadata files are included
- [ ] No compilation errors
- [ ] No linting warnings

## 🚀 Advanced Guidelines

### Performance Considerations

- **Efficiency**: Use appropriate algorithms and data structures
- **Scalability**: Consider performance with larger inputs
- **Memory Usage**: Avoid unnecessary object creation
- **Apex Limits**: Be mindful of governor limits

### Extensibility

- **Modular Design**: Break complex problems into smaller methods
- **Reusability**: Write code that could be reused
- **Maintainability**: Use clear, self-documenting code
- **Flexibility**: Consider different input scenarios

### Educational Value

- **Concept Focus**: Each challenge should teach specific concepts
- **Skill Building**: Build upon previous knowledge
- **Best Practices**: Demonstrate proper coding techniques
- **Real-world Application**: Connect to actual Salesforce scenarios

## 📚 Resources

### Apex Documentation

- [Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/)
- [Apex Best Practices](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_best_practices.htm)
- [Apex Testing](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing.htm)

### Code Quality

- [Clean Code Principles](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Effective Java](https://www.oracle.com/java/technologies/javase/codeconventions-introduction.html)
- [Salesforce Coding Standards](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_best_practices.htm)

---

Following these guidelines will ensure your challenges provide maximum educational value while maintaining consistency with the Lightning Challenges platform. Happy coding! 🎉
