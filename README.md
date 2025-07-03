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
- [GitHub Templates](#github-templates)

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
3. Copy the profile template:
    ```bash
    cp contributors/_template/profile.json contributors/your-github-username/profile.json
    ```
4. Fill out your information (see [Contributor Profiles](#contributor-profiles))

### Step 2: Create a Challenge

1. Copy the challenge template:
    ```bash
    cp -r templates/challenge-template force-app/main/YOUR_USERNAME/CHALLENGE_NUMBER-challenge-name/
    ```
2. Rename and update files according to the [Challenge Structure](#challenge-structure)
3. Follow the template README for detailed implementation steps

### Step 3: Test Your Challenge

1. Test your template (should compile but fail tests):
    ```bash
    cat YourChallengeNameTemplate.cls | sfdx force:apex:execute
    ```
2. Test your solution (should pass all tests):
    ```bash
    cat YourChallengeNameSolution.cls | sfdx force:apex:execute
    ```

### Step 4: Submit Your Contribution

1. Create a pull request using the provided template
2. Fill out all required sections in the PR template
3. Wait for review and feedback

## 📁 Challenge Structure

Each challenge must include the following files:

```
force-app/main/YOUR_USERNAME/CHALLENGE_NUMBER-challenge-name/
├── CHALLENGE_NUMBER-challenge-name.md    # Challenge description
├── ChallengeNameTemplate.cls             # Template with TODO implementation
├── ChallengeNameTemplate.cls-meta.xml
├── ChallengeNameSolution.cls             # Complete solution
├── ChallengeNameSolution.cls-meta.xml
├── ChallengeNameTest.cls                 # Comprehensive test suite
└── ChallengeNameTest.cls-meta.xml
```

### File Requirements

See the template README for detailed file structure, naming conventions, and implementation requirements.

## 👤 Contributor Profiles

Create your profile in `contributors/YOUR_GITHUB_USERNAME/profile.json`:

```json
{
	"displayName": "Your Username",
	"fullName": "Your Full Name",
	"bio": "A brief description about yourself and your Salesforce experience. What drives your passion for Salesforce development? What do you hope to share with the community?",
	"links": {
		"github": "https://github.com/your-username",
		"linkedin": "https://linkedin.com/in/your-profile",
		"trailhead": "https://www.salesforce.com/trailblazer/your-trailhead-id",
		"website": "https://your-website.com",
		"twitter": "https://twitter.com/your-handle",
		"blog": "https://your-blog.com"
	}
}
```

### Profile Setup Instructions

1. **Create Your Profile Directory**

    ```bash
    mkdir contributors/your-github-username
    ```

2. **Copy and Fill Template**

    ```bash
    cp contributors/_template/profile.json contributors/your-github-username/profile.json
    ```

3. **Required Fields**
    - `displayName`: Your GitHub username (required)
    - `github`: Your GitHub profile URL (required)

4. **Optional Fields**
    - `fullName`: Your full name
    - `bio`: Brief description of your Salesforce experience
    - `linkedin`, `trailhead`, `website`, `twitter`, `blog`: Professional links

## 🧪 Testing Your Challenges

Test your template (should fail) and solution (should pass):

```bash
cat YourChallengeNameTemplate.cls | sfdx force:apex:execute
cat YourChallengeNameSolution.cls | sfdx force:apex:execute
```

See the template README for detailed testing instructions and requirements.

## 📋 Submission Guidelines

### Before Submitting

Ensure your challenge meets all requirements outlined in the template README and PR template checklist.

### Pull Request Process

1. **Use the PR Template**: Fill out all sections of the provided pull request template
2. **Include Test Results**: Paste results showing template fails and solution passes
3. **Complete Quality Checklist**: Check all applicable items in the PR template
4. **Add Labels**: The template will automatically add appropriate labels
5. **Respond to Feedback**: Address any review comments promptly

## 🌟 Community Guidelines

### Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Help others learn and grow
- Follow Salesforce best practices

### Challenge Quality Standards

- **Educational Value**: Challenges should teach important Apex concepts
- **Difficulty Progression**: Clearly indicate difficulty level (Beginner/Intermediate/Advanced)
- **Real-world Relevance**: Prefer challenges that reflect actual development scenarios
- **Code Quality**: Follow Apex best practices and conventions

## 📝 GitHub Templates

This repository includes several GitHub templates to streamline the contribution process:

### Issue Templates

Located in `.github/ISSUE_TEMPLATE/`:

- **Challenge Submission** (`challenge-submission.md`): For proposing new challenges
- **Bug Report** (`bug-report.md`): For reporting issues with existing challenges
- **Feature Request** (`feature-request.md`): For suggesting repository improvements
- **Question** (`question.md`): For asking questions about challenges or the repository

### Pull Request Template

Located in `.github/pull_request_template.md`:

- Comprehensive checklist for challenge submissions
- Sections for testing results and quality validation
- Review guidelines for maintainers
- Structured format for consistent submissions

### Using the Templates

1. **For Issues**: Select the appropriate template when creating a new issue
2. **For Pull Requests**: The template will automatically populate when you create a PR
3. **Fill Completely**: Complete all relevant sections for faster review
4. **Follow Checklists**: Use the provided checklists to ensure quality

## 📞 Support

- **Issues**: Report bugs or request features via GitHub Issues using the appropriate template
- **Discussions**: Join community discussions in GitHub Discussions
- **Documentation**: Check the `docs/` folder for detailed guides
- **Templates**: Use the provided templates in `templates/challenge-template/`

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Ready to contribute?** Start by creating your contributor profile and your first challenge using the provided templates! 🚀
