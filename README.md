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
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest black --exclude .venv --check .
```
### Linting 
```bash
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest flake8 --exclude=.venv .
```
### Type checking
```bash
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest mypy --ignore-missing-imports .
```

## Tags
There are two tags available `latest` which contain the latest stable versions of black, flake8, mypy and isort and symver version.

### Symver versions
#### 0.7
Packages are the same, the base image changed.
```
black==20.8b1
flake8==3.8.3
isort==5.5.2
mypy==0.782
```

#### 0.6
```
black==20.8b1
flake8==3.8.3
isort==5.5.2
mypy==0.782
```

#### 0.5
Base image changed.
```
black==19.10b0
flake8==3.8.3
mypy==0.782
```

#### 0.4
```
black==19.10b0
flake8==3.8.3
mypy==0.782
```

#### 0.3
```
black==19.10b0
flake8==3.7.9
mypy==0.761
```