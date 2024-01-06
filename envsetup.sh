#!/bin/bash

if [ -d "venv" ]; then
    echo "Python venv exists"
else
    python3 -m venv venv
fi

echo $PWD

source venv/bin/activate
pip install -r requirements.txt

# if [ -d "logs" ]; then
#     echo "Log folder exists"
# else
#     mkdir logs
#     touch logs/error.log
# fi

chmod -R 777 logs
echo "Environment setup finished"
