# Lightning Challenges Community Repository

Welcome to the Lightning Challenges Community Repository! This is where community members can contribute coding challenges to the Lightning Challenges application - a Salesforce development practice website.

## 🚀 About Lightning Challenges

Lightning Challenges is a platform designed to help Salesforce developers practice and improve their Apex coding skills through hands-on challenges. This community repository allows developers to contribute their own challenges and share knowledge with the broader Salesforce community.

## 📋 Table of Contents

- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
- [Challenge Structure](#challenge-structure)
- [Contributor Profiles](#contributor-profiles)
- [Testing Your Challenges](#testing-your-challenges)
- [Submission Guidelines](#submission-guidelines)
- [Community Guidelines](#community-guidelines)

## 🎯 Getting Started

### Prerequisites

- Salesforce CLI installed
- Git installed
- Basic knowledge of Apex and Salesforce development
- A GitHub account

### Setup

1. Fork this repository
2. Clone your fork locally:
    ```bash
    git clone https://github.com/YOUR_USERNAME/lightning-challenges-community-challenges.git
    cd lightning-challenges-community-challenges
    ```
3. Create your contributor profile (see [Contributor Profiles](#contributor-profiles))
4. Create your first challenge (see [How to Contribute](#how-to-contribute))

## 🤝 How to Contribute

### Step 1: Create Your Contributor Profile

Before creating challenges, set up your contributor profile:

1. Navigate to `contributors/` directory
2. Create a folder with your GitHub username (e.g., `contributors/your-github-username/`)
3. Create a `profile.json` file with your information (see template in `contributors/_template/`)

### Step 2: Create a Challenge

1. Navigate to `force-app/main/YOUR_GITHUB_USERNAME/`
2. Create a new folder for your challenge: `CHALLENGE_NUMBER-challenge-name/`
3. Use the challenge template from `templates/challenge-template/`
4. Include all required files (see [Challenge Structure](#challenge-structure))

### Step 3: Test Your Challenge

1. Test your template (should compile but fail tests)
2. Test your solution (should pass all tests)
3. Use the command: `cat your-file.apex | sfdx force:apex:execute`

### Step 4: Submit Your Contribution

1. Create a pull request with your changes
2. Include a description of your challenge
3. Wait for review and feedback

## 📁 Challenge Structure

Each challenge must include the following files:

```
force-app/main/YOUR_USERNAME/CHALLENGE_NUMBER-challenge-name/
├── challenge-name.md              # Challenge description
├── ChallengeNameTemplate.cls      # Template with TODO implementation
├── ChallengeNameTemplate.cls-meta.xml
├── ChallengeNameSolution.cls      # Complete solution
├── ChallengeNameSolution.cls-meta.xml
├── ChallengeNameTest.cls          # Comprehensive test suite
└── ChallengeNameTest.cls-meta.xml
```

### Challenge Markdown Format

Your `challenge-name.md` should include:

- Challenge title and number
- Problem description
- Input/output examples
- Hints (optional)
- Difficulty level (Easy, Medium, Hard)
- Author information
- Tags/categories

### Code Requirements

- **Template**: Should compile but return `null` or placeholder values
- **Solution**: Should implement the complete, working solution
- **Tests**: Should use the standard testing framework with comprehensive test cases
- **Documentation**: Include clear JavaDoc comments

## 👤 Contributor Profiles

Create your profile in `contributors/YOUR_GITHUB_USERNAME/profile.json`:

```json
{
	"githubUsername": "your-github-username",
	"displayName": "Your Display Name",
	"bio": "A brief description about yourself and your Salesforce experience",
	"profileImage": "https://github.com/your-username.png",
	"links": {
		"github": "https://github.com/your-username",
		"linkedin": "https://linkedin.com/in/your-profile",
		"trailhead": "https://trailhead.salesforce.com/en/me/your-trailhead-id",
		"website": "https://your-website.com",
		"twitter": "https://twitter.com/your-handle"
	},
	"expertise": ["Apex", "Lightning Web Components", "Integration", "etc"],
	"certifications": ["Platform Developer I", "Platform Developer II", "etc"],
	"contributions": {
		"totalChallenges": 0,
		"challengeIds": []
	},
	"joinDate": "2024-01-01",
	"status": "active"
}
```

## 🧪 Testing Your Challenges

### Testing Framework

All challenges must use the standard testing framework. Example:

```apex
// Test execution framework
public static Result result = new Result();
public class ResultException extends Exception {}

public class Result {
    public Boolean pass = true;
    public List<TestResult> testResults = new List<TestResult>();

    public void addTestResult(TestResult testResult) {
        this.testResults.add(testResult);
        if (!testResult.pass) {
            this.pass = false;
        }
    }
}

// ... rest of framework code
```

### Running Tests

Test your template (should fail):

```bash
cat YourChallengeTemplate.cls | sfdx force:apex:execute
```

Test your solution (should pass):

```bash
cat YourChallengeSolution.cls | sfdx force:apex:execute
```

## 📋 Submission Guidelines

### Before Submitting

- [ ] Challenge follows the standard structure
- [ ] Template compiles but fails tests appropriately
- [ ] Solution passes all tests
- [ ] Comprehensive test coverage (minimum 6 test cases)
- [ ] Clear documentation and examples
- [ ] Contributor profile is complete and accurate
- [ ] Challenge number doesn't conflict with existing challenges

### Pull Request Requirements

- **Title**: `Add Challenge #XXX: Challenge Name by @username`
- **Description**: Brief description of the challenge and its learning objectives
- **Labels**: Add appropriate difficulty and topic labels
- **Testing**: Include test results showing template fails and solution passes

### Review Process

1. Automated checks for structure and formatting
2. Code review by maintainers
3. Testing verification
4. Final approval and merge

## 🌟 Community Guidelines

### Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Help others learn and grow
- Follow Salesforce best practices

### Challenge Quality Standards

- **Educational Value**: Challenges should teach important Apex concepts
- **Difficulty Progression**: Clearly indicate difficulty level
- **Real-world Relevance**: Prefer challenges that reflect actual development scenarios
- **Code Quality**: Follow Apex best practices and conventions

### Contribution Recognition

Contributors will be featured on the Lightning Challenges website with:

- Profile page showcasing their challenges
- Contributor statistics and achievements
- Links to their professional profiles
- Community recognition badges

## 📞 Support

- **Issues**: Report bugs or request features via GitHub Issues
- **Discussions**: Join community discussions in GitHub Discussions
- **Documentation**: Check the `docs/` folder for detailed guides

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Ready to contribute?** Start by creating your contributor profile and your first challenge! 🚀
