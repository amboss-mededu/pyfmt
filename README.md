# Python code check docker image

The image includes:
 - flake8
 - black
 - mypy

## To build the image run
 ```bash
 docker build -t amboss.com/pyfmt:0.1 .
 ```

## Run the formatting check in the folder with a source code
 ```bash
docker run -v `pwd`:`pwd` -w `pwd` amboss.com/pyfmt:0.1 black --exclude .venv --check .
```
