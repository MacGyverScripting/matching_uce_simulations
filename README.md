


Workflow:



# UCE macth counter
This repository includes the scripts which were used to simulate the matching success of several UCE probe sets among 400 genomes of different descents.

## Getting Started
The repository includes the entire code used in a modeling study by Bossert & Danforth, and consists of 5 different shell scripts and one Python script. The general workflow is outlined below.

## Prerequisites
The scripts require the following programs: (1) [FaToTwobit](https://genome.ucsc.edu/goldenpath/help/blatSpec.html), callable as "fatotwobit", and (2) [PHYLUCE](https://github.com/faircloth-lab/phyluce)(Faircloth 2017).

The scripts further require two folders: (1) Bait set folder. The scripts need to have access to a "probesets" folder, which has to be nested in the main folder (i.e., the folder in which the following scripts are executed). The "probesets" folder contains the probe sets of interest in .fasta format (e.g., hymenoptera.fasta). The probe sets used in the above mentioned study are from Branstetter et al. (2016). (2) Configuration file folder. The scripts need to have access to a "configs" folder. The folder contains the configuration files that are needed to slice out the genomic sequence data from the utilized genomes. The configuration files can be found in this repository, however,they have to be altered if different taxa are used.

## Workflow 

1. fetch_genomes.sh (e.g., call as ```bash -x fetch_genomes.sh 2>&1 | tee output_fetch.log)```. This script downloads the 400 genomes used in the above mentioned study from NCBI. It will further create the folder architecture that the other scripts of the repository rely on.
   
2. head_script.sh (e.g., call as '```bash -x head_script.sh hymenoptera 2>&1 | tee match_probes_master_hymenoptera.log)```.
   This script runs the actual matching process, wrapped around the phyluce_probe_run_multiple_lastzs_sqlite script from
   [PHYLUCE](https://github.com/faircloth-lab/phyluce).
   
## Literature

1. Branstetter, M. G., Longino, J. T., Ward, P. S. & Faircloth, B. C. Enriching the ant tree of life: enhanced UCE bait set for genome-scale phylogenetics of ants and other Hymenoptera. Methods Ecol. Evol., doi:10.1111/2041-210X.12742 (2017).

2. Faircloth, B. C. PHYLUCE is a software package for the analysis of conserved genomic loci. Bioinformatics 32, 786-788, doi:10.1093/bioinformatics/btv646 (2016)
