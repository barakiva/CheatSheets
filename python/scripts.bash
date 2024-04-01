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