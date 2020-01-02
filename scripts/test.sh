open -a Docker
docker run -v $(pwd):/app -it --rm  node:alpine app/scripts/run_test.sh