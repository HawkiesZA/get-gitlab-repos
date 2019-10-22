# get-gitlab-repos
Simple script to let you download all Gitlab repos in a particular group.

## Requirements
1. [jq](https://stedolan.github.io/jq/) 
2. A Gitlab [Personal Access Token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html)
3. The Group ID. You can get this on the Gitlab UI on the Group page (below the Group Name)

## Usage
1. cd into the directory you want the repos to be pulled into
2. Run the script: `sh get-gitlab-repos [PERSONAL_ACCESS_TOKEN] [GROUP_ID]`. All repos will be cloned.