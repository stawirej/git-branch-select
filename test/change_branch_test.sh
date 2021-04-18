#!/bin/bash

echo "test: change branch"
# GIVEN
git checkout -b test_1
git checkout -b test_2

# WHEN

echo "Select 'test_1' branch"
source ./src/bs

# THEN

CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" = "test_1" ]; then
        echo "SUCCESS"
else
        echo "FAILURE"
fi

# TEAR DOWN
echo "Teardown"
git checkout master
git branch -D test_1
git branch -D test_2