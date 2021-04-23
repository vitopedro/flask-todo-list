#!/usr/bin/env bash
flask db upgrade
FLASK_APP=app.py FLASK_ENV=development flask run --host=0.0.0.0