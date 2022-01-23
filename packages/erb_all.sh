#!/bin/bash
set -o pipefail
YAML_LINT_CONFIG=../.yamllint
files=$(find . -type f -iname "*.erb")
validation=0

for file in $files
do
  if [[ ! $file =~ \/template_.* ]]; then
    echo -e "\e[1;32mChecking $file\e[0m"
    erb -T 2 -r "./constants" "$file" | yamllint -c $YAML_LINT_CONFIG -
    if [ $? -ne 0 ]; then
      validation=1
      erb -T 2 -r "./constants" "$file" | cat --number
    fi
  else
    echo -e "\e[1;36mIgnoring template file $file\e[0m"
  fi

done

if [ $validation -eq 1 ]; then
  echo -e "\e[1;31mValidation has failed\e[0m"
  exit 1
fi

for file in $files
do
  if [[ ! $file =~ \/template_.* ]]; then
    generated_file_name=${file//.erb/_generated.yaml}
    output_file_name=${generated_file_name//\/template/}
    echo -e "\e[1;32mGenerating file $output_file_name from template file $file\e[0m"
    erb -T 2 -r "./constants" "$file" > "$output_file_name"
  fi

done
