echo "Running tests on a docker container"
pwd
ls
# docker run -v $(pwd):/app -it --rm --entrypoint  "ls"  node:alpine

docker run -v /buildkite/builds/7cd9ce752449-1/algorithms-rock-1/algorithms-rock-server:/buildkite/builds/7cd9ce752449-1/algorithms-rock-1/algorithms-rock-server \
  -it \
  -v $(pwd):/app \
  --entrypoint "ls" \
  -w /buildkite/builds/7cd9ce752449-1/algorithms-rock-1/algorithms-rock-server \
  --rm  node:alpine