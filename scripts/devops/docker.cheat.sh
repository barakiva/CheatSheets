
function dl() {
  cat ~/Development/Devops/Docker/dockertoken | sudo docker login --username tortugaport --password-stdin
}
function build() {
  docker build -t $1 .
} 
function deploy() {
  docker run -p $1:$2 $3
}
function run-inside() {
  docker run -it $1 $2
}
# sudo docker run -it --entrypoint /bin/sh node:alpine
# TODO running --entrypoint without -it will close as -it tells docker to use an interactive terminal
function run-inside-runtime() {
  docker run -it --entrypoint /bin/sh $1
}

# sudo docker run -it --entrypoint /bin/sh -p 3000:3000 app

function dsql( ) {
  sudo docker run -it \
  -e MYSQL_ROOT_PASSWORD=admin \
  -e MYSQL_USER=admin \
  -e MYSQL_PASSWORD=admin \
  -e MYSQL_DATABASE=mydatabase \
  -p 3306:3306 \
  -t dsql
  mysql
}

sudo docker exec -it 17586894290c mysql -uroot -p'admin'
