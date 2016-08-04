#!/bin/bash

MARKWIKI_HOME=$(pwd) gunicorn markwiki:app -b 0.0.0.0:8000
