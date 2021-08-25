#!/bin/bash
#SBATCH --job-name=gmx_test             
#SBATCH --ntasks=8                     
#SBATCH --output=test_gmx_%j.out         
#SBATCH --gres=gpu:1
#SBATCH --partition=debug

singularity run --nv /opt/apps/sif/gromacs_2021.sif gmx grompp -c conf.gro -p topol.top -f pme.mdp -o test.tpr

singularity run --nv /opt/apps/sif/gromacs_2021.sif gmx mdrun -deffnm test -v -nsteps 10000 -nb gpu -pme gpu -ntmpi 1 -ntomp 8 -resethway -noconfout -pin on -noddcheck
