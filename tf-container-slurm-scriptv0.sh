#!/bin/bash
#SBATCH --job-name=tf_test             
#SBATCH --ntasks=8                      
#SBATCH --output=test_tf_%j.out 
#SBATCH --gres=gpu:1
#SBATCH --partition=debug

singularity run --nv /opt/apps/sif/tensorflow_21.07-tf2-py3.sif python -c 'import tensorflow as tf; print(tf.__version__)'
