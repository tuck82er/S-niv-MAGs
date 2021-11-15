#!/bin/bash

snakemake   \
  --dryrun --summary --jobs 100 --use-conda -p \
  --configfile config.yaml --cluster-config cluster.yaml \
  --profile /home/etucker5/miniconda3/envs/S-niv-MAGs \
  --cluster "sbatch --parsable --qos=unlim --partition={cluster.queue} \
  --job-name=etucker5.{rule}.{wildcards} --mem={cluster.mem}gb \
  --time={cluster.time} --ntasks={cluster.threads} --nodes={cluster.nodes}"
