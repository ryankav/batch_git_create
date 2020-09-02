@echo off
curl -i -H "Authorization: token %GITHUB_TOKEN%" -d "{\"name\": \"%1\", \"license_template\": \"apache-2.0\", \"auto_init\": true}" https://api.github.com/user/repos
cd C:\Users\Ryan Kavanagh\git_projects
git clone https://github.com/ryankav/%1.git
