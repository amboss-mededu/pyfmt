# Python code check docker image

The image includes:
 - flake8
 - black
 - mypy

## Building the image
1. Bump the tag of the image in the `Makefile`
1. Run `make build`.

## Executing checks
All the checks should be executed in the source folder
### Formatting check
 ```bash
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:0.3 black --exclude .venv --check .
```
### Linting 
```bash
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:0.3 flake8 --exclude=.venv .
```
### Type checking
```bash
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:0.3 mypy --ignore-missing-imports .
```
