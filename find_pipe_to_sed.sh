#!/bin/bash

find . -type f -name "*.txt" -print0 | xargs -0 sed -i "s/foo/bar/g"