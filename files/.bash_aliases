# For tmux colors
alias tmux="tmux -u -2"
# Git aliases
alias gaa="git add --all"
alias gst="git status"
alias gp="git pull"
alias gc="git commit -m"
alias gpo="git push origin"
alias gd="git diff"
# Python virtualenvs
alias py3="source ~/workspace/venvs/python3/bin/activate"
alias kr="source ~/workspace/venvs/knowledge_repo/bin/activate"
alias sai="sudo apt install"
# Program shortcuts
alias r=rtichoke
# Task shortcuts
alias t="task"
alias ta="task add"

function tan {
    id=$1
    text=$2
    cmd="task ${id} annotate '${text}'"
    eval $cmd
}
