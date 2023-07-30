# Cheats
# yy - yank (copy) line
# dd - delete (and cut) line 
# p - paste
# u - undo
# Linux
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias myip="curl -s https://api.ipify.org"
function ssl() {
    openssl genpkey -algorithm RSA -out server.key -pkeyopt rsa_keygen_bits:2048 &&
    openssl req -new -key server.key -out server.csr &&
    openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
}
## Utilities
alias grep='grep --color=auto'
alias cheats='code "/home/barakiva/Development/Code Snippets/cheatsheets"'
alias code-new="mkdir ~/Development/vscode"
alias dvp="cd ~/Development/Projects"
alias dvl="cd ~/Development/Lab"
# Paths
alias lin="cd ~/Development/Linux"
export PATH=/opt/firefox/firefox:$PATH
alias desktop="touch ~/.local/share/applications/$arg.desktop && vim ~/.local/share/applications/$arg.desktop"
alias edit-desktop="cd ~/.local/share/applications"
# Programming

## Python
alias py="python3"
alias pyd="nodemon --exec python3 ./src/app.py"
### Pipenv
alias pys="pipenv shell"
alias pr="pipenv run"
alias pi="pipenv install"
alias pu="pipenv uninstall"
alias pyb="pipenv install && npm install && nodemon --exec python3 ./src/app.py" #python bootstrap
### purge
function pp() {
    deactivate
    exit
    pipenv --rm
    pipenv shell
    pipenv install
}
## Web Dev
alias hd="hugo serve -D"
function nos() {
    nvm install node 
    nvm install --lts
    nvm use --lts
}
function vc() {
    # echo "Creating Vue.js project..."
    # npm create vue@3 -y

    spawn npm create vue3

    expect "Project name" { send "$1\r" }
    expect "Add TypeScript?" { send "Yes\r" }
    expect "Add JSX Support?" { send "Yes\r" }
}
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
function gpl() {
    git add .
    git commit -m "lazy commit"
    git push
}
function gpc() {
    git add .
    git commit -m "$1"
    git push origin HEAD:"$2" # <name-of-remote-branch>
}
function gac() {
	git add .
    git commit -m "$1"
}
function gt() {
    git tag -a "$1" -m "$2"
}
alias gs="git status"
# Push new local branch upstream
function gpb() {
    git push -u origin "$1"
}
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
