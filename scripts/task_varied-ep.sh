#!/bin/bash

../bin/run_hsicbt -cfg ../config/varied-epoch.yaml -ep 1  -ei 1 -tt hsictrain
../bin/run_hsicbt -cfg ../config/varied-epoch.yaml -ep 5  -ei 2 -tt hsictrain
../bin/run_hsicbt -cfg ../config/varied-epoch.yaml -ep 10 -ei 3 -tt hsictrain
../bin/run_hsicbt -cfg ../config/varied-epoch.yaml -ep 5  -ei 1 -tt format -lr 0.005
../bin/run_hsicbt -cfg ../config/varied-epoch.yaml -ep 5  -ei 2 -tt format -lr 0.005
../bin/run_hsicbt -cfg ../config/varied-epoch.yaml -ep 5  -ei 3 -tt format -lr 0.005
../bin/run_plot -t varied-epoch -dc mnist -e pdf
