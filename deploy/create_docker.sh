#build the project
../gradew bootjar

#remove docker image
docker rmi william/authorization_server

#create docker image
docker build -t william/authorization_server ../

#create docker container
docker run -d -p 9010:9010 william/authorization_server

