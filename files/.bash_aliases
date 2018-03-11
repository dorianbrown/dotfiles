# For tmux colors
alias tmux="tmux -u -2"
# Git aliases
alias gaa="git add --all"
alias gst="git status"
alias gp="git pull"
alias gc="git commit -m"
alias gpo="git push origin"
# Python virtualenvs
alias py3="source ~/workspace/venvs/python3.5.2/bin/activate"
alias sai="sudo apt install"
# Task shortcuts
alias t="task"
alias ta="task add"

function tan {
    id=$1
    text=$2
    cmd="task ${id} annotate '${text}'"
    eval $cmd
}
