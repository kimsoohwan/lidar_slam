#!/bin/sh
set -e  # exit on first error

export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:$PWD/src/models
gazebo src/worlds/simulation.world --verbose
