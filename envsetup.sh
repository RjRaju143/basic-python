#!/bin/bash

if [ -d "venv" ]; then
    echo $PWD
    sudo rm -rf venv
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    echo "Environment setup finished"
else
    echo $PWD
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    echo "Environment setup finished"
fi

