#!/bin/bash
#SBATCH --job-name=pytorch_test             
#SBATCH --ntasks=8                      
#SBATCH --output=test_pytorch_%j.out 
#SBATCH --gres=gpu:1
#SBATCH --partition=debug

singularity run --nv /opt/apps/sif/pytorch_21.07-py3.sif python -c 'import torch; print(torch.__version__)'
