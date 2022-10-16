#!/bin/bash

declare -a key=(company_name package_name package_display_name package_description github_username)
declare -a key_values=("company-name" "package-name" "Package Display Name" "This is an example package description." "github_username")

getUserInput() {
    read -erp "Enter ${key[$1]}: " -i "${key_values[$1]}" temp_var
    if [ -z "$temp_var" ]; then
        printf "%s is required" "${key[$1]}"
        exit
    fi

    key_values[$1]=$temp_var
}

filesToUpdate() {
    find . -type f -not -path "./.git*" -exec sed -i "$1" {} \;
}

renameFiles() {
    find . -type f -not -path "./.git*" -name "*\[company-name\].\[package-name\]*" | rename "s/\[company-name\].\[package-name\]/${key_values[0]}.${key_values[1]}/g"
}

updateFiles() {
    printf "\nUpdating variables & filenames"
    renameFiles
    filesToUpdate "s/\[company-name\]/${key_values[0]}/g"
    filesToUpdate "s/\[package-name\]/${key_values[1]}/g"
    filesToUpdate "s/\[package-display-name\]/${key_values[2]}/g"
    filesToUpdate "s/\[package-description\]/${key_values[3]}/g"
    filesToUpdate "s/\[github-username\]/${key_values[4]}/g"
    printf "\nDONE!"
}

for index in "${!key[@]}"; do
    getUserInput "$index"
done

updateFiles
