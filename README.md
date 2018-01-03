# Paddleboard

## Installation Instructions

**Prerequisites:** [CMake](https://cmake.org/download/) (Required to build VisualDL)

1) Clone paddleboard repo and setup git submodules

```
git clone git@github.com:PaddlePaddle/board.git

cd board
git submodule init
git submodule update
```

2)  Create virtual environment

```
virtualenv venv
source venv/bin/activate
``` 


3)  Build and install paddleboard wheel.  Note VisualDL cmake build currently requires numpy to be installed, so you must install this first.
```
pip install numpy==1.13.3
./paddleboard/pip/build_package.sh
pip install --upgrade dist/paddleboard-0.1-py2-none-any.whl
```

4)  Run server

```
paddleboard runserver
```

5)  Launch browser and navigate to http://localhost:8000