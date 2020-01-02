echo "Running tests on a docker container"
pwd

docker run -v $(pwd):/app -it --rm  node:alpine /buildkite/builds/8d3ff62e811d-1/algorithms-rock-1/algorithms-rock-server/scripts/run_test.sh