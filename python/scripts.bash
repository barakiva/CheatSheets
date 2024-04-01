# Watchdog

## Run a command continuously when files change
watchmedo shell-command \
    --patterns="*.py;*.txt" \
    --recursive \
    --command='echo "${watch_src_path}"' \
    .

## Log changes
gowatchmedo log \
    --patterns="*.py;*.txt" \
    --ignore-directories \
    --recursive \
    --verbose \
    .


pipdeptree
pip show pkg


function pyv() {
    python3 -m venv venv
    source venv/bin/activate
}
