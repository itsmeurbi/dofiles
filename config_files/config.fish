if status is-interactive
    # Commands to run in interactive sessions can go here
end
status --is-interactive; and rbenv init - fish | source
set -x GPG_TTY (tty)

alias be='bundle exec'
alias gch='git checkout'
alias gi="git init"
alias gs="git stash"
alias grh="git reset head"
alias gbd="git branch -D"
alias gpm='git pull origin master'
alias gp='git push origin head'
alias gpqa='git pull origin qa'
alias gfo="git fetch origin"
alias gph="git push origin head"
alias ctg-console-prod="heroku run exec rails console -a clear-production"
alias ctg-console-qa="heroku run exec rails console -a clear-qa"
alias ctg-specs="RAILS_ENV=test bundle exec rake parallel:spec"
alias birria-pa-gallos="git push production master:master"
alias ctg-deploy="git push production master:master"
alias birria-pa-pollos="git push qa qa:master"
alias rubocop-in-changes="git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb' | xargs rubocop"
