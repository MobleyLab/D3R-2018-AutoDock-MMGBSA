# for some structures we minimized in OpenMM before running the Amber simulations
# Minimizing in Amber gave positive energies, which is why we did this.
module load cuda/8.0.44
source activate openmm-7.1
cd ../ligand_2wf3_redo
while read line
do

   echo $line
   cd $line
   python3 ../../scripts/min_openmm.py
   cd ../

done <  ../min_openmm.txt
