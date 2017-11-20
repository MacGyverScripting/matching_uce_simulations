#!/bin/bash

# Silas Bossert, sb2346@cornell.edu
# 20.IV.2017
# Cornell University, Dep. of Entomology, Danforth lab

# Call: 'bash -x head_script.sh hymenoptera 2>&1 | tee match_probes_master_hymenoptera.log'

taxon=$1

taxon() {
	echo $taxon
}

mkdir results_$(taxon)
cd matching_folder_$(taxon)

cd 80_65
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_66
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_67
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_68
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_69
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_70
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_71
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_72
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_73
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_74
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_75
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_76
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_77
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_78
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_79
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_80
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_81
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_82
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_83
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_84
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_85
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_86
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_87
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_88
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_89
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_90
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_91
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_92
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_93
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_94
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log

cd ../80_95
yes Y | ../../slicer.sh $(taxon) 2>&1 | tee slices_count.log
../../phyluce_count_probes_chopper.py
mv results.log ../../results_$(taxon)/results_"${PWD##*_}".log
