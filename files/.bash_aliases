# For tmux colors
alias tmux="tmux -u -2"

# Standard shortcuts
alias ll="ls -l"
alias la="ls -a"

# Fedora aliases
alias sdi="sudo dnf install"

# Git aliases
alias gaa="git add --all"
alias gst="git status --short"
alias gp="git pull"
alias gc="git commit -m"
alias gpo="git push origin"
alias gd="git diff"
alias glo="git log --oneline"

# Python virtualenvs
alias py3="source ~/workspace/venvs/python3/bin/activate"
alias kr="source ~/workspace/venvs/knowledge_repo/bin/activate"

# Program shortcuts
alias lab="jupyter lab"

# Task shortcuts
alias t="task"
alias ta="task add"

# Starting servers
alias serve="bundle exec jekyll serve"
function publish {
    commit_msg=$1
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    if [ "$current_branch" != "dev" ]
    then
        echo "Not on dev branch"
        exit 1
    fi

    git add --all
    git commit -m "$commit_msg"
    git push origin dev

    git checkout master
    git merge dev
    git push origin master

    git checkout dev
}

# SSH Shortcuts
alias ssh_aws="ssh -i ~/keys/iaa_aws.pem ec2-user@18.184.26.99"
alias ssh_globetrotter_root="ssh -i ~/keys/dorian_laptop.pem ubuntu@18.184.26.99"
alias ssh_walts="ssh -i ~/keys/walts.pem ec2-user@18.185.229.24"
alias ssh_ttd="ssh dorian@35.158.254.158"

# Docker-compose
alias dc="docker-compose"

# Conda
alias sa="source activate"

## Functions

function gacp {
    cmd="git add --all; git commit -m '$1'; git push origin $2"
    eval $cmd
}

alias debug="python -m ipdb -c continue"
