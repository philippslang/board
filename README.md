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

3)  Build and install paddleboard wheel
```
./paddleboard/pip/build_package.sh
pip install --upgrade dist/paddleboard-0.1-py2-none-any.whl
```

4)  Run server

```
paddleboard runserver
```

5)  Launch browser and navigate to http://localhost:8000