cd ligand_2wf3_redo/ 
for file in * 
do

   cd $file
   qsub ../../scripts/mmgbsa.pbs
   cd ../

done 
cd ../

