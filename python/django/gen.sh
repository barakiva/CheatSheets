#!/bin/bash

# Usage: ./start_project.sh project_name template_type
# Example: ./start_project.sh my_django_project django

PROJECT_NAME=$1
TEMPLATE_TYPE=$2
TEMPLATES_DIR=~/pipfile_templates
BASE_DIR=/home/barakiva/Development/Lab/Django/

if [[ -z "$PROJECT_NAME" || -z "$TEMPLATE_TYPE" ]]; then
  echo "Usage: $0 project_name template_type"
  exit 1
fi

DIR="$BASE_DIR$PROJECT_NAME"
# Create project directory
mkdir "$DIR"
cd "$DIR" 
pipenv install django
pipenv run django-admin startproject "$PROJECT_NAME" .
# Append "start" script to Pipfile
echo -e "\n[start]\ncommand = \"python manage.py runserver\"" >> Pipfile || exit

# # Copy the appropriate Pipfile template
# cp "$TEMPLATES_DIR/Pipfile.$TEMPLATE_TYPE" ./Pipfile

# Initialize the pipenv environment
# pipenv install

echo "Project $PROJECT_NAME initialized with $TEMPLATE_TYPE template."


