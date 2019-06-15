cd ligand_4EWO_singleProt/ 
for file in * 
do

   cd $file
   qsub ../../scripts/mmgbsa.pbs
   cd ../

done 
cd ../

