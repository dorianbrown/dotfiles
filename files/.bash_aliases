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
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

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
alias ssh_ewsai="gcloud compute ssh tensorflow-python-cuda-minilab-1-vm -- -L 7000:localhost:7000"
alias ssh_rc="ssh dorian@40.118.45.229"

function gsp {
    cmd="gcloud compute ssh $1 -- -L $2:localhost:$2"
    eval $cmd
}

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

alias t="todo.sh"
