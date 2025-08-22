#!/bin/bash

# check for argument
if [ -z "$1" ]; then
    # not found
    echo "Usage: $0 <test_name>"
    exit 1
fi

# set the executable path
path="../../dragon-forge-project/dragon-forge.elf"

# get the test name
TEST_NAME="$1"

# run the appropriate test
if [ "$TEST_NAME" == "all" ]; then
    $path "./source/test/dragon/test.dragon"
else
    echo "Error: Unknown test '$TEST_NAME'"
    exit 1
fi
