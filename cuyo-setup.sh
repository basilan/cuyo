#!/bin/bash

# Cuyo v1.2 - Repository Setup Script (FIXED)
# Creates complete folder structure and all necessary files

set -e  # Exit on any error

echo "🚀 Setting up Cuyo v1.2 - AI Career Cue System..."

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p docs
mkdir -p prompts
mkdir -p templates
mkdir -p examples/profiles
mkdir -p examples/opportunities
mkdir -p examples/applications
mkdir -p profiles
mkdir -p applications
mkdir -p scripts

# Create .gitkeep files for empty directories
echo "🔒 Setting up privacy protection..."
touch profiles/.gitkeep
touch applications/.gitkeep

# Create .gitignore
echo "📝 Creating .gitignore..."
cat > .gitignore << 'GITIGNORE_END'
# Personal data - never commit actual profiles/applications
profiles/*
!profiles/.gitkeep
applications/*
!applications/.gitkeep

# OS files
.DS_Store
Thumbs.db

# IDE files
.vscode/
.idea/

# Python
__pycache__/
*.pyc
*.pyo
*.pyd
.Python

# Logs
*.log

# Environment files
.env
.env.local
GITIGNORE_END

# Create LICENSE
echo "⚖️ Creating LICENSE..."
cat > LICENSE << 'LICENSE_END'
MIT License

Copyright (c) 2025 Cuyo - AI Career Cue System

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
LICENSE_END

# Create main README.md
echo "📄 Creating README.md..."
cat > README.md << 'README_END'
# Cuyo v1.2 - AI Career Cue System

**Tagline:** *AI-powered cues for executive career acceleration*

Cuyo is a comprehensive AI-powered career acceleration platform designed specifically for executive-level professionals seeking high-impact opportunities.

## 🎯 What Cuyo Does

- **ProfileBuilder:** Converts raw career data into structured, reusable candidate profiles
- **OpportunityScout:** Finds and scores high-quality opportunities matching your criteria  
- **ApplicationCrafter:** Generates targeted, executive-quality application materials
- **InterviewPreper:** Creates customized interview preparation for specific scenarios

## 🚀 Quick Start

1. Clone this repository
2. Review examples in `examples/` directory
3. Use `prompts/profile-builder.md` to create your profile
4. Follow the complete process using all 4 components

## 📁 Repository Structure

```
cuyo/
├── README.md
├── docs/              # Documentation and guides
├── prompts/           # AI prompt components
├── templates/         # JSON and markdown templates  
├── examples/          # Working examples
├── profiles/          # Your generated profiles (private)
├── applications/      # Your generated applications (private)
└── scripts/           # Validation and utility scripts
```

For complete documentation, see `docs/getting-started.md`

---

**Get your career cues from Cuyo - AI-powered acceleration for executive success.**
README_END

# Create getting-started.md
echo "📚 Creating docs/getting-started.md..."
cat > docs/getting-started.md << 'DOCS_END'
# Getting Started with Cuyo v1.2

## Prerequisites
- Access to Claude AI (Anthropic)
- Professional resume (Word/PDF)
- 3-5 career achievement stories in SAR format
- Clear target role criteria

## Step-by-Step Tutorial

### Step 1: Prepare Your Data
1. Convert resume to text format
2. Write 3-5 SAR stories (Situation-Action-Result)
3. Define target criteria:
   - Salary range
   - Location preferences  
   - Company types
   - Role titles

### Step 2: Generate Candidate Profile
1. Open `prompts/profile-builder.md`
2. Copy prompt to Claude
3. Input your resume and SAR stories
4. Save output as `profiles/your-name.json`

### Step 3: Find Opportunities  
1. Open `prompts/opportunity-scout.md`
2. Input your profile + search criteria
3. Review scored opportunities
4. Select top 3-5 for applications

### Step 4: Create Applications
1. Open `prompts/application-crafter.md`
2. For each opportunity:
   - Input your profile + opportunity details
   - Generate complete application package
   - Save in `applications/company-name/`

### Step 5: Interview Preparation
1. Use `prompts/interview-preper.md`
2. Input opportunity + interviewer details
3. Generate customized interview materials

## Tips for Success
- Be completely honest in profile data
- Focus on quantified achievements
- Customize for each target role
- Validate all outputs for accuracy
- Use AI cues throughout the process

For more detailed information, see the main README.md
DOCS_END

# Create profile-builder.md prompt
echo "🤖 Creating prompts/profile-builder.md..."
cat > prompts/profile-builder.md << 'PROFILE_END'
# Cuyo ProfileBuilder v1.2 - AI Prompt

## Component Purpose
Convert raw career data into a structured CandidateProfile JSON that serves as the foundation for all downstream components.

## Instructions for Claude AI

You are an expert AI career coach helping build "Cuyo" - an AI career cue system for executive-level professionals. Your task is to create a comprehensive CandidateProfile JSON from the user's raw career data.

### CRITICAL REQUIREMENTS
1. **Zero Hallucinations:** Only use information provided by the user
2. **Data Validation:** Flag any missing or unclear information
3. **Executive Focus:** Maintain standards appropriate for $300k+ roles
4. **Strategic Positioning:** Identify key differentiators and value propositions

### Output Format
Generate a CandidateProfile JSON with complete structure including:
- personalInfo, targetPreferences, professionalSummary
- workExperience, keyAchievements, coreCompetencies
- sarStoryBank, education, certifications
- marketingHooks, differentiators

### Quality Validation
Before finalizing, ensure:
- All data traces back to user input
- No fictional or assumed information
- Executive-level positioning maintained
- Quantified achievements included
- Strategic differentiators identified

## User Input Section
[User provides their career data here]

---

*Cuyo ProfileBuilder v1.2 - Providing AI-powered cues for career acceleration*
PROFILE_END

# Create opportunity-scout.md prompt
echo "🎯 Creating prompts/opportunity-scout.md..."
cat > prompts/opportunity-scout.md << 'SCOUT_END'
# Cuyo OpportunityScout v1.2 - AI Prompt

## Component Purpose
Find and score high-quality opportunities that match the candidate's profile and preferences.

## Instructions for Claude AI

Research and score opportunities based on the candidate's profile using a 1-10 scale.

### CRITICAL REQUIREMENTS
1. **Real Opportunities:** Only suggest actual, current job opportunities
2. **Strategic Scoring:** Use 1-10 scale based on fit, salary, and growth potential
3. **Market Intelligence:** Include recent company news and strategic context
4. **Gap Analysis:** Identify potential weaknesses and mitigation strategies

### Output Format
Generate an OpportunitiesHitList JSON with scored opportunities, match analysis, and application guidance.

## User Input Section
[User provides CandidateProfile and search criteria here]

---

*Cuyo OpportunityScout v1.2 - AI-powered cues for opportunity discovery*
SCOUT_END

# Create application-crafter.md prompt
echo "✍️ Creating prompts/application-crafter.md..."
cat > prompts/application-crafter.md << 'CRAFTER_END'
# Cuyo ApplicationCrafter v1.2 - AI Prompt

## Component Purpose
Generate complete, executive-quality application packages for specific opportunities.

## Instructions for Claude AI

Create consulting-grade application materials for executive-level opportunities.

### CRITICAL REQUIREMENTS
1. **Zero Hallucinations:** Only use data from CandidateProfile
2. **Executive Quality:** Maintain BCG/McKinsey-level standards
3. **Strategic Positioning:** Tailor messaging to specific company and role
4. **Complete Package:** Include all components needed for successful application

### Resume Requirements (STRICT)
- **Length:** 3-4 pages maximum
- **Content:** 100% traceable to source profile data
- **Customization:** Role-specific positioning

### Output Format
Generate complete Application Package with application details, resume, cover letter, gap assessment, and interview preparation.

## User Input Section
[User provides CandidateProfile and opportunity details here]

---

*Cuyo ApplicationCrafter v1.2 - AI-powered cues for application excellence*
CRAFTER_END

# Create interview-preper.md prompt
echo "🎭 Creating prompts/interview-preper.md..."
cat > prompts/interview-preper.md << 'PREPER_END'
# Cuyo InterviewPreper v1.2 - AI Prompt

## Component Purpose
Create customized interview preparation materials for specific opportunities and interviewers.

## Instructions for Claude AI

Prepare executives for high-stakes interviews with comprehensive, role-specific preparation.

### CRITICAL REQUIREMENTS
1. **Behavioral Excellence:** Prepare for executive-level behavioral questions
2. **Technical Readiness:** Address role-specific technical scenarios
3. **Strategic Insight:** Demonstrate understanding of company challenges
4. **Cultural Alignment:** Show fit with organizational values

### Output Format
Generate comprehensive Interview Preparation including company intelligence, interviewer research, question preparation, and success strategies.

## User Input Section
[User provides opportunity details and interviewer information here]

---

*Cuyo InterviewPreper v1.2 - AI-powered cues for interview success*
PREPER_END

# Create candidate-profile.json template
echo "📋 Creating templates/candidate-profile.json..."
cat > templates/candidate-profile.json << 'TEMPLATE_END'
{
  "candidateId": "template-example-001",
  "version": "1.2",
  "generatedDate": "2025-07-04",
  "personalInfo": {
    "name": "[Your Full Name]",
    "location": "[City, State/Country]",
    "workArrangement": "[Remote/Hybrid preferences]",
    "currentRole": "[Current Position Title]"
  },
  "targetPreferences": {
    "salaryMinimum": 350000,
    "currency": "USD",
    "salaryType": "base",
    "targetRoles": ["Chief AI Officer", "VP Technology", "Practice Lead"],
    "preferredCompanies": ["Target Company 1", "Target Company 2"],
    "excludeCompanies": ["Company to Avoid"]
  },
  "professionalSummary": {
    "yearsExperience": 20,
    "specializations": ["AI/ML", "Digital Transformation", "Leadership"],
    "keyExperience": "[Brief summary of your background]"
  },
  "keyAchievements": [
    {
      "category": "Revenue Impact",
      "achievement": "[Quantified business achievement]",
      "verified": true
    }
  ],
  "coreCompetencies": {
    "technical": ["AI/ML", "Cloud Platforms", "Software Development"],
    "business": ["Strategy", "P&L Management", "Business Development"],
    "leadership": ["Team Building", "Change Management", "Executive Communication"]
  },
  "marketingHooks": [
    "[Compelling value proposition that differentiates you]"
  ],
  "differentiators": [
    "[Unique competitive advantage in your field]"
  ]
}
TEMPLATE_END

# Create validate-profile.py script
echo "🛠️ Creating scripts/validate-profile.py..."
cat > scripts/validate-profile.py << 'PYTHON_END'
#!/usr/bin/env python3
"""
Cuyo Profile Validator v1.2
Validates candidate profiles for data integrity and quality
"""

import json
import sys
from datetime import datetime

def validate_profile(profile_path):
    """Validate a candidate profile JSON file"""
    
    try:
        with open(profile_path, 'r') as f:
            profile = json.load(f)
    except Exception as e:
        print(f"❌ Error loading profile: {e}")
        return False
    
    errors = []
    warnings = []
    
    # Required fields check
    required_fields = [
        'candidateId', 'personalInfo', 'targetPreferences', 
        'professionalSummary', 'keyAchievements', 'coreCompetencies'
    ]
    
    for field in required_fields:
        if field not in profile:
            errors.append(f"Missing required field: {field}")
    
    # Version check
    if profile.get('version') != '1.2':
        warnings.append(f"Profile version is {profile.get('version')}, expected 1.2")
    
    # Print results
    if errors:
        print("❌ ERRORS found:")
        for error in errors:
            print(f"  - {error}")
    
    if warnings:
        print("⚠️  WARNINGS:")
        for warning in warnings:
            print(f"  - {warning}")
    
    if not errors and not warnings:
        print("✅ Profile validation passed!")
        return True
    elif not errors:
        print("✅ Profile validation passed with warnings")
        return True
    
    return False

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python validate-profile.py <profile.json>")
        print("Example: python validate-profile.py profiles/john-doe.json")
        sys.exit(1)
    
    profile_path = sys.argv[1]
    success = validate_profile(profile_path)
    sys.exit(0 if success else 1)
PYTHON_END

# Make Python script executable
chmod +x scripts/validate-profile.py

# Create example profile
echo "📋 Creating examples/profiles/sample-executive.json..."
cat > examples/profiles/sample-executive.json << 'EXAMPLE_END'
{
  "candidateId": "sample-executive-001",
  "version": "1.2",
  "generatedDate": "2025-07-04",
  "personalInfo": {
    "name": "[Name Redacted]",
    "location": "Major Metropolitan Area",
    "workArrangement": "Remote globally preferred, hybrid options considered",
    "currentRole": "Senior Technology Executive"
  },
  "targetPreferences": {
    "salaryMinimum": 350000,
    "currency": "USD",
    "salaryType": "base",
    "targetRoles": ["Chief AI Officer", "VP Technology", "Practice Lead"],
    "preferredCompanies": ["BCG", "McKinsey", "Accenture", "Major Tech Companies"]
  },
  "professionalSummary": {
    "yearsExperience": 20,
    "specializations": ["AI/ML", "Digital Transformation", "Team Leadership"],
    "keyExperience": "Technology executive with proven track record of building AI-powered solutions and leading global teams"
  },
  "keyAchievements": [
    {
      "category": "Revenue Impact",
      "achievement": "Led initiatives resulting in $500M+ revenue growth",
      "verified": true
    },
    {
      "category": "Team Leadership", 
      "achievement": "Built and managed 250+ consultant organization across three regions",
      "verified": true
    }
  ],
  "coreCompetencies": {
    "technical": ["AI/ML", "Cloud Platforms", "Software Architecture"],
    "business": ["Strategy", "P&L Management", "Business Development"],
    "leadership": ["Team Building", "Change Management", "Crisis Management"]
  },
  "marketingHooks": [
    "Former technology executive who built AI solutions serving 60,000+ users",
    "Global team leader with proven track record of scaling consulting organizations"
  ],
  "differentiators": [
    "Unique combination of technical depth and executive leadership at scale",
    "Proven crisis management with quantified client satisfaction improvements"
  ]
}
EXAMPLE_END

# Test the setup
echo "🧪 Testing setup..."
echo "Testing template validation..."
python3 scripts/validate-profile.py templates/candidate-profile.json || echo "⚠️ Template validation expected warnings"

echo "Testing example validation..."
python3 scripts/validate-profile.py examples/profiles/sample-executive.json

echo ""
echo "🎉 Cuyo v1.2 setup complete!"
echo ""
echo "📁 Created structure:"
echo "  ├── docs/ (guides and documentation)"
echo "  ├── prompts/ (4 AI components)"
echo "  ├── templates/ (JSON and markdown templates)"
echo "  ├── examples/ (working samples)"
echo "  ├── scripts/ (validation tools)"
echo "  └── profiles/, applications/ (your private data)"
echo ""
echo "🚀 Next steps:"
echo "  1. Review the generated README.md"
echo "  2. Customize templates for your use case"
echo "  3. Test with prompts/profile-builder.md"
echo "  4. Commit to git: git add . && git commit -m 'Cuyo v1.2 initial setup'"
echo ""
echo "🎯 Ready to accelerate your career with AI-powered cues!"