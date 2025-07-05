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
