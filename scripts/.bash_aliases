# Cheats
# yy - yank (copy) line
# dd - delete (and cut) line 
# p - paste
# u - undo
# echo "hello world" > text.txt
## Utilities
function cheats() {
    code ~/Development/Projects/cheats; exit
}
function pcv {
    mkdir -p ~/Development/Lab/"$1"
    cd ~/Development/Lab/"$1"
    pnpm create vite . --template vue-ts
    pnpm install

    # Create the tasks.json file for VS Code
    mkdir -p .vscode
    cat <<EOT > .vscode/tasks.json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run Dev Server",
            "type": "shell",
            "command": "pnpm dev",
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "presentation": {
                "echo": true,
                "reveal": "always",
                "focus": true,
                "panel": "dedicated"
            },
            "problemMatcher": []
        }
    ]
}
EOT

    code .
    sleep 2 # Wait a moment for VS Code to open

    # Use Code Runner to execute the task
    code --install-extension formulahendry.code-runner
    sleep 2 # Wait for the extension to install

    # Run the task to start the development server
    code --command workbench.action.tasks.runTask --args "Run Dev Server"
}
function dogpg() {
    # TODO split the domain out of the URI
    URI_DOMAIN =  $URI
    curl -fsSL $URI | sudo gpg --dearmor -o /usr/share/keyrings/"$URI_DOMAIN"
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/'$URI_DOMAIN'.gpg] '$URI' $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/'$URI_DOMAIN'.list > /dev/null
    sudo apt update

}

# Symlink:  $ ln -s origin target
# Python
function pybin() {
    ls -1 $VIRTUAL_ENV/bin
}
# Linux
##Tar

# -x --extract --get uncompress
# -v --verbose
# -f --file
# -z --gzip Use gzip to uncompress
function untar() {
    tar -xzf $1
}
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias myip="curl -s https://api.ipify.org"
function ssl() {
    openssl genpkey -algorithm RSA -out server.key -pkeyopt rsa_keygen_bits:2048 &&
    openssl req -new -key server.key -out server.csr &&
    openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
}
function do-ssh() {
    ssh-keygen -t ed25519 -C "$2" -m PEM -f ~/.ssh/$1.pem


}
function do-ssh-add() {
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/"$1"
}
alias grep='grep --color=auto'
# Paths
export PATH=/opt/firefox/firefox:$PATH
alias desktop="touch ~/.local/share/applications/$arg.desktop && vim ~/.local/share/applications/$arg.desktop"
alias edit-desktop="cd ~/.local/share/applications"
# Programming
demo() {
    mkdir ~/Development/Lab/"$1"
    code ~/Development/Lab/"$1" && exit
}
demo-g() {
    git clone $1 ~/Development/Lab/"$2"
    code ~/Development/Lab/"$2" && exit
}
prj() {
    mkdir ~/Development/Projects/"$1"
    code ~/Development/Projects/"$1" && exit
}
prj-g() {
    git clone $1 ~/Development/Projects/"$2"
    code ~/Development/Projects/"$2" && exit
}
gc() {
    git clone $1 ~/Development/Lab/"$2"
    code ~/Development/Lab/"$2" && exit
}

# demo() {
#     local base=~/Development/
#     while getopts "g" flag; do
#         case $flag in
#             g) # Handle the -g flag
#             echo "Hello worl1213d"
#             ;;
#         esac
#     done
# }
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

## Devops
alias tf="terraform"

function azl() {
    az login
    az account set --subscription "sub"

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
function co() {
    git checkout "$1"
}
function gl() {
    git log --oneline
}
alias gs="git status"
alias gsb="git branch"
## Branches
function gb() {
    git branch "$@"
}
function gbp() {
    git branch "$1"
    git push -u origin "$1"
}
### Delete local and remote branch
function gbd() {
    git branch -d "$1" # delete local branch
    git push origin --delete "$1" # delete remote branch
}
# Tools
## yt-dlp
alias yu="sudo yt-dlp -U"
alias y="yt-dlp -o '/home/barakiva/Downloads/vidya/%(title)s.%(ext)s'"
## yt-dl
alias ydlu="sudo -H pip install --upgrade youtube-dl"
alias ydl="youtube-dl"
# Bash Configuration
alias src="source ~/.bashrc"
alias aliases="vim ~/.bash_aliases"
# Other
alias hd="hugo server --config config-dev.toml"
