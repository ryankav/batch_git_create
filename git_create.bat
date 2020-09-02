@echo off
curl -i -H "Authorization: token %GITHUB_TOKEN%" -d "{\"name\": \"%1\", \"license_template\": \"apache-2.0\"}" https://api.github.com/user/repos
cd C:\Users\Ryan Kavanagh\git_projects
mkdir %1
cd %1
git init
type nul > README.md
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/ryankav/%1.git
git push -u origin master