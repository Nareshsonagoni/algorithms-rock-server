echo "Running tests on a docker container"
pwd

docker run -v $(pwd):/app -it --rm --entrypoint  "pwd"  node:alpine

# docker run -v $(pwd):/app \
#   -it \
#   -v "/var/lib/buildkite/builds:/var/lib/buildkite/builds" \
#   -v "/usr/local/bin/buildkite-agent:/usr/local/bin/buildkite-agent" \
#   -v "/var/run/docker.sock:/var/run/docker.sock" \
#   -e "BUILDKITE_BUILD_PATH=/var/lib/buildkite/builds" \
#   --entrypoint "/bin/sh" \
#   -w /app \
#   --rm  node:alpine /scripts/run_test.sh