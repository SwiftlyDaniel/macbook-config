#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the new name for the project"
  exit 1
fi

projectName=$(ddev describe -j | jq -r '.raw.name')

ddev delete "$projectName" -y

ddev config --project-name="$1"

ddev snapshot restore --latest

ddev restart