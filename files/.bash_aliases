# For tmux colors
alias tmux="tmux -u -2"
# Git aliases
alias gaa="git add --all"
alias gst="git status"
alias gp="git pull"
alias gc="git commit -m"
alias gpo="git push origin"
alias gd="git diff"
alias glo="git log --oneline"
# Python virtualenvs
alias py3="source ~/workspace/venvs/python3/bin/activate"
alias kr="source ~/workspace/venvs/knowledge_repo/bin/activate"
alias sai="sudo apt install"
# Program shortcuts
alias r=rtichoke
alias lab="jupyter lab"
# Task shortcuts
alias t="task"
alias ta="task add"
# Jekyll server start
alias serve="bundle exec jekyll serve"
# SSH Shortcuts
alias ssh_aws="ssh -i ~/keys/iaa_aws.pem ec2-user@18.184.26.99"

function tan {
    id=$1
    text=$2
    cmd="task ${id} annotate '${text}'"
    eval $cmd
}
