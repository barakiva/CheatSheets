# Cheats
# yy - yank (copy) line
# dd - delete (and cut) line 
# p - paste
# u - undo
# Linux
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
## Utilities
alias grep='grep --color=auto'
alias cheats='code "/home/barakiva/Development/Code Snippets/cheatsheets"'
alias code-new="mkdir ~/Development/vscode"
# Paths
alias lin="cd ~/Development/Linux"
export PATH=/opt/firefox/firefox:$PATH
alias desktop="touch ~/.local/share/applications/$arg.desktop && vim ~/.local/share/applications/$arg.desktop"
alias edit-desktop="cd ~/.local/share/applications"
# Programming

## Python
alias py="python3"
alias pyd="nodemon --exec python3 ./src/app.py"
alias pys="pipenv shell"
alias pr="pipenv run"
alias pi="pipenv install"
alias pyw="nodemon --exec python3 ./src/app.py"
alias pyb="pipenv install && npm install && nodemon --exec python3 ./src/app.py" #python bootstrap
alias pysd="pipenv --rm"
## Web Dev
alias hd="hugo serve -D"
### JS
alias nr="npm run"
alias ns="npm run start"
alias nd="npm run dev"
alias nt="npm run test"
# Git
function gp() {
    git add .
    git commit -m "$1"
    git push
}
function gac() {
	git add .
    git commit -m "$1"
}
function gt() {
    git tag -a "$1" -m "$2"
}
# Push new local branch upstream
function gpb() {
    git push -u origin "$1"
}
alias gpl="git push origin main"
# Tools
## yt-dlp
alias yu="sudo yt-dlp -U"
alias y="yt-dlp -o '~/Downloads/vidya/%(title)s.%(ext)s'"
## yt-dl
alias ydlu="sudo -H pip install --upgrade youtube-dl"
alias ydl="youtube-dl"
# Other
alias cheats="code ~/Development/Utility/Cheats"
function cheats-u() {
    cd ~/Development/Utility/Cheats
    git fetch
    git pull
}
function cheats-p() {
    cd ~/Development/Utility/Cheats
    git add .
    git commit -m "$1"
    git push
}
# Bash Configuration
alias src="source ~/.bashrc"
alias aliases="vim ~/.bash_aliases"
# Other
alias hd="hugo server --config config-dev.toml"
