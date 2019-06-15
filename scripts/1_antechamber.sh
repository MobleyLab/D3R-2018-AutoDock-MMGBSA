cd ligand/
while read line
do
  splitted=($line)
  file=${splitted[0]}
  charge=${splitted[1]}
  cd $file
  echo parameterizing molecule $file with charge $charge
  antechamber -i lig_pose.mol2 -fi mol2 -o LIG.mol2 -fo mol2 -c bcc -s 2 -nc $charge > antechamber.log
  cd ../
done < ../charge.txt
cd ..
