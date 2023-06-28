# ~/.bash_aliases

# Git
function gp() {
    git add .
    git commit -m "$1"
    git push
}
alias gac="git add . && git commit"

# Python
alias py="python3"
alias pr="pipenv run"

# JavaScript
alias nr="npm run"
alias nid="npm i && npm run dev"
alias ns="npm run start"
alias nd="npm run dev"
alias nt="npm run test"

# Bash Configuration
alias bl="source ~/.bashrc"
# Other
alias aliases="vim ~/.bash_aliases"        # Modify aliases
alias cheats="code $"               # Quick access to code snippets
alias hd="hugo server --config config-dev.toml"  # Start Hugo development server