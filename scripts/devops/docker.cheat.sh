

function build() {
  docker build -t $1 .
} 
function deploy() {
  docker run -p $1:$2 $3
}
function run-inside() {
  docker run -it $1 $2
}

function run-inside-runtime() {
  docker run -it --entrypoint /bin/sh $1
}