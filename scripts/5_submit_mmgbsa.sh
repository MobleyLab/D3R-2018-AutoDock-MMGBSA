cd ligand/
for file in * 
do

   cd $file
   qsub ../../scripts/mmgbsa.pbs
   cd ../

done 
cd ../

