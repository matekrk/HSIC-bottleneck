#!/bin/bash

# """
# this is the script that produce the results all at once without training
# """

# result file format
ftype=pdf

# debug training (from hsic-train, ba# ckprop to format train)
../bin/run_hsicbt -t general -dc mnist -e $ftype

# # fig2a-c: hsic monitoring in backprop training with vaired activation functions
../bin/run_hsicbt -t varied-activation -dc mnist -e $ftype

# # fig2d-f: hsic monitoring in backprop training with varied network depth
../bin/run_hsicbt -t varied-depth -dc mnist -e $ftype

# # fig4
../bin/run_hsicbt -t hsic-solve -dc mnist -e $ftype
../bin/run_hsicbt -t hsic-solve -dc fmnist -e $ftype
../bin/run_hsicbt -t hsic-solve -dc cifar10 -e $ftype
../bin/run_hsicbt -t hsic-solve -dc synthetic -e $ftype

# # fig5: format-training with different hsic-trained network
../bin/run_hsicbt -t varied-epoch -dc mnist -e $ftype

# # fig6-a: hsic-trained network capacity with network size
../bin/run_hsicbt -t varied-dim -dc mnist -e $ftype

# # fig6-b: hsic-trained network capacity with combo
../bin/run_hsicbt -t sigma-combined -dc mnist -e $ftype

# # fig7: resnet case
../bin/run_hsicbt -t resconv -e $ftype


