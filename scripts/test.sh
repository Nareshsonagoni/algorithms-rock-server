echo "Running tests on a docker container"
pwd

# docker run -v $(pwd):/app -it --rm --entrypoint  "ls"  node:alpine

docker run -v $(pwd):/app \
  -it \
  --entrypoint "ls" \
  -w / \
  --rm  node:alpine