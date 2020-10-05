# Dockerised Python static code checking and linting.

The image includes:
 - flake8
 - black
 - mypy
 - isort

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

## make doit
This is a typical approach we recommend for all python projects. Add a new target to your Makefile
which combines import sorting, code formating, linting and static type checking together.
Black should be executed twice since flake8 also formats the code.
```make
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest isort .
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest black --exclude .venv .
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest flake8 --exclude=.venv --max-line-length=120 .
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest black --exclude .venv .
docker run -v `pwd`:`pwd` -w `pwd` quay.io/amboss-mededu/pyfmt:latest mypy --ignore-missing-imports .
```

## Tags
There are two tags available `latest` which contain the latest stable versions of black, flake8, mypy and isort and symver version.

### Symver versions
#### 0.8
Updated base image.
```
black==20.8b1
flake8==3.8.4
isort==5.5.4
mypy==0.782
```
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