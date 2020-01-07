# Python code check docker image

The image includes:
 - flake8
 - black
 - mypy

## Building the image
1. Bump the tag of the image in the `Makefile`
1. Run `make build`.

## Run the formatting check in the folder with a source code
 ```bash
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:0.2 black --exclude .venv --check .
 ```

