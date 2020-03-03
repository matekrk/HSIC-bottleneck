#!/bin/bash

../bin/run_hsicbt -cfg ../config/varied-activation.yaml -ei 1 -at relu    -tt backprop
../bin/run_hsicbt -cfg ../config/varied-activation.yaml -ei 2 -at tanh    -tt backprop
../bin/run_hsicbt -cfg ../config/varied-activation.yaml -ei 3 -at elu     -tt backprop
../bin/run_hsicbt -cfg ../config/varied-activation.yaml -ei 4 -at sigmoid -tt backprop
../bin/run_plot -t varied-activation -dc mnist -e pdf
