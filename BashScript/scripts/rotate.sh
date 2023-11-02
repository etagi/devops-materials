#!/bin/bash

LOG_DIR="test"
TARGET_DIR="/home/ubuntu/archive"

mkdir -p $TARGET_DIR
tar -cvzf zipped.tar.gz $LOG_DIR 
mv zipped.tar.gz $TARGET_DIR
