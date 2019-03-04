#!/bin/bash
for i in {65..70..5}
do
  name="iter_$i.sh"
  cp template "$name"
  echo $i
  echo "python ../analysis/classif_sequence_RNN.py --n_hidden $i --seq_size 5 --layer_size 2  --n_folds 5 --epochs 800 --features \"reactive_power apparent_power active_power current cosfi\" --tod \"7:00 7:30 8:30 9:30 10:30 11:30 12:30 13:30 14:30 15:30 16:30 17:30 18:30 1$" >> "$name"
  sbatch $name
 done
