#!/bin/bash

echo "🚀 Cohort Platform - Quick Deploy Script"
echo "======================================="
echo ""

# Check if user provided repository URL
if [ -z "$1" ]; then
    echo "❌ Please provide your GitHub repository URL:"
    echo "   Usage: ./quick-deploy.sh https://github.com/USERNAME/REPO.git"
    echo ""
    echo "📋 Steps to get your URL:"
    echo "   1. Go to your GitHub repository"
    echo "   2. Click the green 'Code' button"
    echo "   3. Copy the HTTPS URL"
    echo ""
    exit 1
fi

REPO_URL="$1"

echo "🔗 Repository: $REPO_URL"
echo ""

# Connect to repository
echo "📡 Connecting to repository..."
git remote add origin "$REPO_URL"

# Push main branch
echo "📤 Pushing main branch..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Main branch pushed successfully!"
    
    # Deploy to GitHub Pages
    echo "🌐 Deploying to GitHub Pages..."
    git checkout gh-pages
    git merge main
    git push -u origin gh-pages
    git checkout main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 DEPLOYMENT SUCCESSFUL!"
        echo "========================"
        echo ""
        echo "📱 Your Cohort platform is now live!"
        echo ""
        echo "🔧 Final Step - Enable GitHub Pages:"
        echo "   1. Go to your repository on GitHub"
        echo "   2. Click 'Settings' tab"
        echo "   3. Scroll to 'Pages' section"
        echo "   4. Select 'gh-pages' branch as source"
        echo "   5. Click 'Save'"
        echo ""
        
        # Extract username and repo name from URL
        USERNAME=$(echo "$REPO_URL" | sed 's/.*github\.com\/\([^/]*\)\/.*/\1/')
        REPO_NAME=$(echo "$REPO_URL" | sed 's/.*\/\([^/]*\)\.git/\1/')
        
        echo "🌐 Your live site will be at:"
        echo "   https://$USERNAME.github.io/$REPO_NAME/"
        echo ""
        echo "✨ Features deployed:"
        echo "   • Modern glassmorphism design with animations"
        echo "   • Interactive Chloe sandbox demo"
        echo "   • Complete founder bios and governance"
        echo "   • All 6 clone operator descriptions"
        echo "   • Responsive design for all devices"
        echo ""
    else
        echo "❌ GitHub Pages deployment failed"
    fi
else
    echo "❌ Failed to push to repository"
    echo "💡 Please check:"
    echo "   • Repository URL is correct"
    echo "   • You have push access to the repository"
    echo "   • Repository exists on GitHub"
fi
