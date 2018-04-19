#!/bin/bash
if [ $1 != "" ]; then
    terminator -p $1
else
    terminator -p trans10
fi
