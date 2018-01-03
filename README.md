# Paddleboard

## Installation Instructions

1) Clone paddleboard repo

```
git clone git@github.com:PaddlePaddle/board.git
```

2)  Create virtual environment

```
cd board
virtualenv venv
source venv/bin/activate
``` 

3)  Update git submodules
```
git submodule init
git submodule update
```

4)  Build and install paddleboard wheel.  Note VisualDL cmake build currently requires numpy to be installed, so you must install this first.
```
pip install numpy==1.13.3
./paddleboard/pip/build_package.sh
pip install --upgrade dist/paddleboard-0.1-py2-none-any.whl
```

5)  Run server

```
paddleboard runserver
```

6)  Launch browser and navigate to http://localhost:8000