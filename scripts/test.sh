echo "Running tests on a docker container"

docker run -v $(pwd):/app -it --rm  node:alpine scripts/run_test.sh