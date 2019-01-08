{% comment %}

.. image:: https://requires.io/bitbucket/maykinmedia/default-project/requirements.svg?branch=master
     :target: https://requires.io/bitbucket/maykinmedia/default-project/requirements/?branch=master
     :alt: Requirements Status

# Why?
This default project structure creates a nice seperation between the frontend and backend tasks.
This way the Project root stays nice and clean.

# How to use it
Go to the place your project live.

```sh
cd /path/to/projects
mkdir <project_name>
cd <project_name>
```

Create the virtual environment that holds your copy of Python and relevant
libraries

```sh
virtualenv --python=/usr/bin/python3 env
source env/bin/activate
pip install django
```

Start a new Django project, named ``<project_name>``, using this template. It
can be usefull to use a ``<project_name>`` that serves as namespace in your
code.

```
django-admin startproject --template=https://bitbucket.org/maykinmedia/default-project/get/master.zip --extension=py,rst,rb,html,gitignore,json,ini,js,sh,cfg,properties <project_name> .
```

You'll need pip-compile to generate the pinned versions of the requirements

```sh
pip install pip setuptools --upgrade (optionally)
pip install pip-tools
cd requirements
pip-compile base.in
cd ..
```

**NOTE:** The section above will not be included in your project's README.
Below you'll see the actual project README template.

{% endcomment %}

# {{ project_name|lower }}
The code for {{ project_name|lower }} is split in a frontend and backend part.

## Frontend
The frontend is used for the following code:

- JavaScript
    - ESlint
    - Jest
    - Babel
- Scss
    - Stylelint
- Django Templates
    - HTMLhint

## Backend
The backend is used for the following code:

- Django
    - Pylint
    - Pep8
    - Isort
    - (choose formatter)

