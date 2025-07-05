#!/bin/bash

# Cuyo v1.2 - Cleanup Script
# Removes all generated files and folders to start fresh

set -e  # Exit on any error

echo "🧹 Cleaning up Cuyo repository..."

# Remove generated directories (but keep .git)
echo "📁 Removing generated directories..."
rm -rf docs/
rm -rf prompts/
rm -rf templates/
rm -rf examples/
rm -rf profiles/
rm -rf applications/
rm -rf scripts/

# Remove generated files
echo "📄 Removing generated files..."
rm -f .gitignore
rm -f LICENSE
rm -f README.md

# Remove any temp files
echo "🗑️ Removing temporary files..."
rm -f setup-cuyo.sh
rm -f *.tmp
rm -f *.log

# Show what's left
echo ""
echo "✅ Cleanup complete!"
echo ""
echo "📁 Remaining files:"
ls -la

echo ""
echo "🚀 Repository is now clean and ready for fresh setup!"
echo ""
echo "Next steps:"
echo "  1. Fix the setup script"
echo "  2. Run ./setup-cuyo.sh again"
echo ""