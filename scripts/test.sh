echo "Running tests on a docker container"
pwd
ls
# docker run -v $(pwd):/app -it --rm --entrypoint  "ls"  node:alpine

docker run -v $(pwd):/app \
  -it \
  -v $(pwd):/app \
  --entrypoint "ls" \
  -w /usr \
  --rm  node:alpine