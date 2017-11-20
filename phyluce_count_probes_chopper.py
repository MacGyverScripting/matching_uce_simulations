#!/usr/bin/env python
# phyluce_count_probes_chopper.py
# Silas Bossert, sb2346@cornell.edu
# 06.II.2017

# This is a helper script for the head_slicher.sh. There is no need to change it.

import os
import sys

logfile = open("results.log", "w")

f = open('slices_count.log','r')

for line in f:
	if 'uces' in line:
		logfile.write((line[43:(line.index('written')+7)])+"\n")
	else:
		pass