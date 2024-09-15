#!/bin/bash

# Lista de directorios de proyectos
PROJECTS=(
  "$HOME/project1"
  "$HOME/project2"
  "$HOME/project3"
)

for PROJECT in "${PROJECTS[@]}"; do
  echo "Updating project in $PROJECT..."
  cd "$PROJECT" || exit
  git pull origin master
  echo "Updated $PROJECT."
done