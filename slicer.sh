#!/bin/bash

# Silas Bossert, sb2346@cornell.edu
# 19.IV.2017
# Cornell University, Dep. of Entomology, Danforth lab

# This is a helper script for the head_slicher.sh. There is no need to change it.

taxon=$1

probefile() {
	echo $taxon.fasta_v_{}.lastz.clean
}

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_1.conf --lastz run_1_lastz --output run_1_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_1_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_2.conf --lastz run_2_lastz --output run_2_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_2_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_3.conf --lastz run_3_lastz --output run_3_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_3_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_4.conf --lastz run_4_lastz --output run_4_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_4_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_5.conf --lastz run_5_lastz --output run_5_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_5_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_6.conf --lastz run_6_lastz --output run_6_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_6_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_7.conf --lastz run_7_lastz --output run_7_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_7_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_8.conf --lastz run_8_lastz --output run_8_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_8_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_9.conf --lastz run_9_lastz --output run_9_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_9_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_10.conf --lastz run_10_lastz --output run_10_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_10_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_11.conf --lastz run_11_lastz --output run_11_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_11_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_12.conf --lastz run_12_lastz --output run_12_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_12_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_13.conf --lastz run_13_lastz --output run_13_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_13_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_14.conf --lastz run_14_lastz --output run_14_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_14_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_15.conf --lastz run_15_lastz --output run_15_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_15_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_16.conf --lastz run_16_lastz --output run_16_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_16_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_17.conf --lastz run_17_lastz --output run_17_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_17_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_18.conf --lastz run_18_lastz --output run_18_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_18_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_19.conf --lastz run_19_lastz --output run_19_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_19_fastas_0_flanks

phyluce_probe_slice_sequence_from_genomes --conf ../../configs/run_20.conf --lastz run_20_lastz --output run_20_fastas_0_flanks --name-pattern "$(probefile)" --flank 0
rm -rf run_20_fastas_0_flanks
