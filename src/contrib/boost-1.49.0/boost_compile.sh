#!/bin/bash

# in boost root directory
# builds stage/lib/libboost_thread.a/.dylib
./bootstrap.sh --with-libraries=thread
./b2 
