echo "Running tests on a docker container"
pwd

docker run -v $(pwd):/app -it \
  -v "/var/lib/buildkite/builds:/var/lib/buildkite/builds" \
  -v "/usr/local/bin/buildkite-agent:/usr/local/bin/buildkite-agent" \
  -v "/var/run/docker.sock:/var/run/docker.sock" \
  -e "BUILDKITE_BUILD_PATH=/var/lib/buildkite/builds" \
  -d \
  -t \
  --rm  node:alpine /buildkite/builds/8d3ff62e811d-1/algorithms-rock-1/algorithms-rock-server/scripts/run_test.sh