#!/bin/bash
#SBATCH --job-name=tf_test              
#SBATCH --ntasks=8                     
#SBATCH --output=test_tf_%j.out         
#SBATCH --gres=gpu:2
#SBATCH --partition=debug

singularity run --nv /opt/apps/sif/tensorflow_21.07-tf2-py3.sif python tf_cnn_benchmarks.py --num_gpus=2 --batch_size=32 --model=resnet50 --variable_update=parameter_server
