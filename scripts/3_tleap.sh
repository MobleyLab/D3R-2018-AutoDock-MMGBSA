cd ligand/
while read line
do
   splitted=($line)
   file=${splitted[0]}
   protein=${splitted[1]}
   echo $file $protein
   cd $file
   cp ../../scripts/leap_${protein}.in  leap.in 
   tleap -f leap.in > leap.log
   cd ../

done < ../receptor.txt
cd ../
