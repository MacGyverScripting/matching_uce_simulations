#!/bin/bash

# Silas Bossert, sb2346@cornell.edu
# 19.IV.2017
# Cornell University, Dep. of Entomology, Danforth lab

# Call: 'bash -x head_script.sh hymenoptera 2>&1 | tee match_probes_master_hymenoptera.log'

# Start from within the folder that has access to "2bits" folder

taxon=$1

probefile() {
	echo $taxon
}

mkdir matching_folder_$(probefile)
cd matching_folder_$(probefile)
mkdir 80_65 80_66 80_67 80_68 80_69 80_70 80_71 80_72 80_73 80_74 80_75 80_76 80_77 80_78 80_79 80_80 80_81 80_82 80_83 80_84 80_85 80_86 80_87 80_88 80_89 80_90 80_91 80_92 80_93 80_94 80_95

cd 80_65
../../match_probes.sh 2>&1 | tee output_80_65.log
cd ../80_66
../../match_probes.sh 2>&1 | tee output_80_66.log
cd ../80_67
../../match_probes.sh 2>&1 | tee output_80_67.log
cd ../80_68
../../match_probes.sh 2>&1 | tee output_80_68.log
cd ../80_69
../../match_probes.sh 2>&1 | tee output_80_69.log
cd ../80_70
../../match_probes.sh 2>&1 | tee output_80_70.log
cd ../80_71
../../match_probes.sh 2>&1 | tee output_80_71.log
cd ../80_72
../../match_probes.sh 2>&1 | tee output_80_72.log
cd ../80_73
../../match_probes.sh 2>&1 | tee output_80_73.log
cd ../80_74
../../match_probes.sh 2>&1 | tee output_80_74.log
cd ../80_75
../../match_probes.sh 2>&1 | tee output_80_75.log
cd ../80_76
../../match_probes.sh 2>&1 | tee output_80_76.log
cd ../80_77
../../match_probes.sh 2>&1 | tee output_80_77.log
cd ../80_78
../../match_probes.sh 2>&1 | tee output_80_78.log
cd ../80_79
../../match_probes.sh 2>&1 | tee output_80_79.log
cd ../80_80
../../match_probes.sh 2>&1 | tee output_80_80.log
cd ../80_81
../../match_probes.sh 2>&1 | tee output_80_81.log
cd ../80_82
../../match_probes.sh 2>&1 | tee output_80_82.log
cd ../80_83
../../match_probes.sh 2>&1 | tee output_80_83.log
cd ../80_84
../../match_probes.sh 2>&1 | tee output_80_84.log
cd ../80_85
../../match_probes.sh 2>&1 | tee output_80_85.log
cd ../80_86
../../match_probes.sh 2>&1 | tee output_80_86.log
cd ../80_87
../../match_probes.sh 2>&1 | tee output_80_87.log
cd ../80_88
../../match_probes.sh 2>&1 | tee output_80_88.log
cd ../80_89
../../match_probes.sh 2>&1 | tee output_80_89.log
cd ../80_90
../../match_probes.sh 2>&1 | tee output_80_90.log
cd ../80_91
../../match_probes.sh 2>&1 | tee output_80_91.log
cd ../80_92
../../match_probes.sh 2>&1 | tee output_80_92.log
cd ../80_93
../../match_probes.sh 2>&1 | tee output_80_93.log
cd ../80_94
../../match_probes.sh 2>&1 | tee output_80_94.log
cd ../80_95
../../match_probes.sh 2>&1 | tee output_80_95.log