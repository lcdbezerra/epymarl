#!/bin/bash
#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=batch
#SBATCH -J RobotSweep
#SBATCH -o /ibex/user/camaral/runs/RobotSweep.%J.out
#SBATCH -e /ibex/user/camaral/runs/RobotSweep.%J.err
#SBATCH --mail-user=lucas.camaradantasbezerra@kaust.edu.sa
#SBATCH --mail-type=ALL
#SBATCH --time=24:00:00
#SBATCH --mem=100G
#SBATCH --gres=gpu:p6000:2


# conda init bash
# conda activate epymarl
cd /home/camaral/code/epymarl/src
# git pull
# python run_ibex.py ofx576a7 -o
python run_ibex.py gridworld_cnn_vs_mlp/07yyypfu -o