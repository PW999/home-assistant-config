#!/bin/bash
set -o pipefail
YAML_LINT_CONFIG=../../.yamllint
files=$(find . -type f -iname "*.erb")
validation=0

for file in $files
do
  if [[ ! $file =~ template.* ]]; then
    echo "Checking $file"
    erb -T 2 -r "./constants" "$file" | yamllint -c $YAML_LINT_CONFIG -
    if [ $? -ne 0 ]; then
      validation=1
    fi
  else
    echo "Ignoring template file $file"
  fi

done

if [ $validation -eq 1 ]; then
  echo "Validation has failed"
  exit 1
fi

for file in $files
do
  if [[ ! $file =~ template.* ]]; then
    yaml_name=${file//.erb/_generated.yaml}
    echo "Generating file $yaml_name from template file $file"
    erb -T 2 -r "./constants" "$file" > "$yaml_name"
  fi
done
