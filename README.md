# UCE match counter
This repository includes the scripts which were used to simulate the matching success of several UCE probe sets among 400 genomes of different descents.

## Getting Started
The repository includes the entire code used in a modeling study by Bossert & Danforth, and consists of 5 different shell scripts and one Python script. The general workflow is outlined below.

## Prerequisites
### Programs
The scripts require the following programs: 
* (1) [FaToTwobit](https://genome.ucsc.edu/goldenpath/help/blatSpec.html), callable as "fatotwobit", and 
* (2) [PHYLUCE](https://github.com/faircloth-lab/phyluce) (Faircloth 2017).

### Folder architecture
The scripts further require two folders: 
* (1) Bait set folder. The scripts need to have access to a "probesets" folder, which has to be nested in the main folder (i.e., the folder in which the following scripts are executed). The "probesets" folder contains the probe sets of interest in .fasta format (e.g., hymenoptera.fasta). The probe sets used in the above mentioned study can be found in [Faircloth's (2017)](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12754/full) [Dryad repository] (http://datadryad.org/resource/doi:10.5061/dryad.v0k4h). The Hymenoptera probe set is from [Branstetter et al. (2017)](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12742/abstract). 
* (2) Configuration file folder. The scripts need to have access to a "configs" folder. The folder contains the configuration files that are needed to slice out the genomic sequence data from the utilized genomes. The configuration files can be found in this repository, however, they have to be altered if different taxa are used.

```
main_folder
      ├── probesets
      │       ├── hymenoptera.fasta
      │       ├── coleoptera.fasta
      │       ├── diptera.fasta
      │       └── ...
      │
      ├── configs
      │       ├── run_1.conf
      │       ├── run_2.conf
      │       ├── run_3.conf    
      │       ├── run_4.conf  
      │       └── ...
      │
      ├── fetch_genomes.sh
      ├── head_script.sh
      ├── match_probes.sh
      ├── head_slicer.sh
      ├── slicer.sh
      └── here_comes_python.py
```  

## Workflow 

1. fetch_genomes.sh – (e.g., call as ```bash -x fetch_genomes.sh 2>&1 | tee output_fetch.log```). This script downloads the 400 genomes used in the above mentioned study from NCBI. It will further create the folder architecture that the other scripts of the repository rely on. Keep in mind that these are very large downloads.
   
2. head_script.sh – (e.g., call as ```bash -x head_script.sh hymenoptera 2>&1 | tee match_probes_master_hymenoptera.log```). This script runs the actual matching process, wrapped around the [phyluce_probe_run_multiple_lastzs_sqlite](https://github.com/faircloth-lab/phyluce/blob/master/bin/assembly/phyluce_assembly_match_contigs_to_probes) script from [PHYLUCE](https://github.com/faircloth-lab/phyluce). The first argument represents the name of the taxon group (in this case hymenoptera); this name has to correspond to a probe set file in the probesets-folder (i.e., hymenoptera.fasta). The script calls the helper script ```match_probes.sh```, which has to be in the same folder. The first argument represents the name of the taxon group (in this hymenoptera); this name has to correspond to a probe set file in the probesets-folder (i.e., hymenoptera.fasta).

3. head_slicer.sh – (e.g., call as ```bash -x head_script.sh hymenoptera 2>&1 | tee match_probes_master_hymenoptera.log```). This script slices out the matches from the previously created sqlite databases, using the [phyluce_probe_slice_sequence_from_genomes](https://github.com/faircloth-lab/phyluce/blob/master/bin/probes/phyluce_probe_slice_sequence_from_genomes) program from [PHYLUCE](https://github.com/faircloth-lab/phyluce). The first argument represents the name of the taxon group (in this case hymenoptera) that was previously matched. I.e., it has to correspond to the folder name with /results_$(taxon) (in this case it is results_hymenoptera). It makes use of two additional helper scripts (slicer.sh; phyluce_count_probes_chopper.py)
   
## Literature

1. Branstetter, M. G., Longino, J. T., Ward, P. S. & Faircloth, B. C. Enriching the ant tree of life: enhanced UCE bait set for genome-scale phylogenetics of ants and other Hymenoptera. Methods Ecol. Evol. [doi:10.1111/2041-210X.12742](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12742/abstract) (2017).

2. Faircloth, B. C. PHYLUCE is a software package for the analysis of conserved genomic loci. Bioinformatics 32, 786-788, [doi:10.1093/bioinformatics/btv646](https://academic.oup.com/bioinformatics/article-lookup/doi/10.1093/bioinformatics/btv646) (2016).

3. Faircloth, B. C. Identifying conserved genomic elements and designing universal bait sets to enrich them. Methods Ecol. Evol. [10.1111/2041-210X.12754](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12754/full)
