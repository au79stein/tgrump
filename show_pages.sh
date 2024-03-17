#!/usr/bin/env bash

gap() {
echo
echo
echo
echo
}

gap
gap

pwd
gap
ls -la --color
gap

# Configuration
echo "$ tree config"
gap
tree config
gap

echo "$ cat config/routes.rb"
gap
cat config/routes.rb
gap

echo "$ cat config/application.rb"
gap
cat config/application.rb
gap

# app
echo "$ tree app"
gap
tree app
gap

# Controller
pushd app/controllers
gap
ls -la
gap
echo "$ cat application_controller.rb"
cat application_controller.rb
gap
echo "$ cat pages_controller.rb"
cat pages_controller.rb
gap
popd

# Views
pushd app/views
gap
ls -la
gap

# layouts
pushd layouts
gap
ls -la
gap
echo "$ cat application.html.erb"
cat application.html.erb
popd
gap

# pages
pushd pages
gap
ls -la
gap
echo "$ cat home.html.erb$"
gap
cat home.html.erb
gap
echo "$ cat about.html.erb"
gap
cat about.html.erb
gap
popd
gap

