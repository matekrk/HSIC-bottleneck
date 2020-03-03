#!/bin/bash

../bin/../bin/run_hsicbt -cfg ../config/general-hsicbt.yaml   -tt hsictrain
../bin/run_hsicbt -cfg ../config/general-format.yaml   -tt format
../bin/run_hsicbt -cfg ../config/general-backprop.yaml -tt backprop
../bin/run_plot -t general -dc mnist -e pdf

