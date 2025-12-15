#!/bin/bash

echo Building haven
cd src || exit 1
make || exit 1

echo Starting python engine
cd ..
nohup python3 run_python_engine.py > python_engine.log 2>&1 &

echo Starting game server
cd bin || exit 1
nohup ./startup > startup.log 2>&1 &

echo Haven started
