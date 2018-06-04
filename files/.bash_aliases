# For tmux colors
alias tmux="tmux -u -2"

# Standard shortcuts
alias ll="ls -l"
alias la="ls -a"

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
alias r="rtichoke"
alias lab="jupyter lab"

# Task shortcuts
alias t="task"
alias ta="task add"

# Starting servers
alias serve="bundle exec jekyll serve"

# SSH Shortcuts
alias ssh_aws="ssh -i ~/keys/iaa_aws.pem ec2-user@18.184.26.99"

## Functions

function gacp {
    cmd="git add --all; git commit -m '$1'; git push origin $2"
    eval $cmd
}

function nbslides {
    jupyter nbconvert "$1" --to slides --post serve
}

function tan {
    id=$1
    text=$2
    cmd="task ${id} annotate '${text}'"
    eval $cmd
}
