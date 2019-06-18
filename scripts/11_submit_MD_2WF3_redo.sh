cd ligand_2wf3_redo/
for file in * 
do

  protein="2WF3"

  echo $file $protein
  cd $file
  mkdir netcdf mdout PBS rst
  sed "s/XXX/${file}/g; s/YYY/${protein}/g;" ../../scripts/run_MD.pbs  > run_MD_${protein}.pbs
  qsub run_MD_${protein}.pbs
  cd ../
done 
cd ../

