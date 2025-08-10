#!/bin/bash

# GitHub Pages Deployment Script for Cohort Platform
echo "🚀 Deploying Cohort Platform to GitHub Pages..."

# Check if repository URL is set
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ No remote repository set. Please set your GitHub repository URL:"
    echo "   git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO.git"
    exit 1
fi

# Build/Deploy to GitHub Pages
echo "📦 Preparing deployment..."

# Switch to gh-pages branch
git checkout gh-pages
git merge main

# Push to GitHub Pages
echo "🌐 Pushing to GitHub Pages..."
git push origin gh-pages

# Switch back to main
git checkout main

echo "✅ Deployment complete!"
echo "🔗 Your site will be available at: https://YOUR-USERNAME.github.io/YOUR-REPO/"
echo ""
echo "To enable GitHub Pages:"
echo "1. Go to your repository settings"
echo "2. Scroll to 'Pages' section"
echo "3. Select 'gh-pages' branch as source"
echo "4. Click Save"
