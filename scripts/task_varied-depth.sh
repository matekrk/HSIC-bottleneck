#!/bin/bash

../bin/run_hsicbt -cfg ../config/varied-depth.yaml -dt 5  -ei 1
../bin/run_hsicbt -cfg ../config/varied-depth.yaml -dt 10 -ei 2
../bin/run_hsicbt -cfg ../config/varied-depth.yaml -dt 15 -ei 3
../bin/run_hsicbt -cfg ../config/varied-depth.yaml -dt 20 -ei 4
../bin/run_plot -t varied-depth -dc mnist -e pdf
