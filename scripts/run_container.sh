echo "Running container for the image algorithms-rock-server"

docker run -p 5000:3000 -d -d --name algorithms algorithms-rock-server

# response=$(docker ps -a --format "{{.Names}}" --filter "name=bnsearch")
# if [  $response == bnsearch ]
# then
#     echo "killing and removing existing container"
#     docker kill bnsearch
#     echo "removing container"
#     docker rm bnsearch
#     echo "Creating a new container" 
#     docker run -p 5000:3000 -d -d --name bnsearch algorithms-rock-server
# else
#     echo " creating new container! "
#     docker run -p 5000:3000 -d -d --name bnsearch algorithms-rock-server
# fi