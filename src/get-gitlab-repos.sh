#!/bin/bash
echo "$#"
if [ $# -ne 2 ]; then
    echo "You must specify a Personal Access Token and Group ID"
else
    x=1
    while [ true ]
    do
        echo "Getting page $x of repos..."
        curl --header "Private-Token: $1" "https://gitlab.com/api/v4/groups/$2/projects?per_page=100&page=$x" | jq '.[] | .ssh_url_to_repo' | xargs -I % git clone %
        if [ $? != 0 ]; then 
            echo "No repos returned. Exiting."
            exit 1
        fi
    done
fi