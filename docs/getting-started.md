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
