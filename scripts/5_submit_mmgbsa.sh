cd ligand/
for file in * 
do

   cd $file
   if [ "$file" != "BACE_37" ] || [ "$file" != "BACE_54" ] || [ "$file" != "BACE_62" ] || [ "$file" != "BACE_136" ]
   then 
     echo $file
     qsub ../../scripts/mmgbsa.pbs
   fi
   cd ../

done 
cd ../

