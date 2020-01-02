echo "Running tests on a docker container"
docker run -v $(pwd):/app -it --rm --entrypoint "/bin/sh" node:alpine