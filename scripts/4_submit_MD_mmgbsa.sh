cd ligand/
while read line 
do

   splitted=($line)
   file=${splitted[0]}
   protein=${splitted[1]}
   cd $file
   mkdir netcdf mdout PBS rst
   sed "s/XXX/${file}/g; s/YYY/${protein}/g;" ../../scripts/run_MD.pbs  > run_MD_${protein}.pbs
   qsub run_MD_${protein}.pbs
   cd ../

done < ../receptor.txt
cd ../

