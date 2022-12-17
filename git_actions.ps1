# To use import-Module, you must beforehand add the function file/directory to the Powershell module
Import-Module MyFunctions

# Call a function to build form to specify whether it's new repo or code change session
$choice = Prompt_choice                         # call and store it
$match = $choice -match "^[12]$"                # match the patern

# force two choices (betwenn `1` for new repo and `2` for code change)
while (-not $match) {
    
    Write-Host "Choice not included"
    $choice = Prompt_choice
    $match = $choice -match "^[12]$"

}

if ($choice -eq 1) {

    $repo_name   = Prompt_repo                  # ask for the repo name and store it
    $commit_name = Prompt_commit                # ask for commit comments and store it

    # basic set actions to send the code
    git init
    git add .
    git commit -m $commit_name
    git branch -M main
    git remote add origin https://github.com/camarh/$repo_name
    git push -uq origin main

    exit 

  # When new repo not the case, just add and commit the new code
} else {
    
    $commit_name = Prompt_commit

    git add .
    git commit -m $commit_name
    git push -qu

    exit

}