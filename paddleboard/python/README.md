# Local Paddleboard development

### Installation Instructions

1) Create virtual environment

```
virtualenv venv
source venv/bin/activate
```

2) Install requirements

```
pip install -r paddleboard/server/requirements.txt
```

3) Build VisualDL.  Please ensure you have CMAKE installed.

```
../pip/build_visualdl_local_dev.sh
```

4) Start paddleboard server

```
python manage.py runserver
```