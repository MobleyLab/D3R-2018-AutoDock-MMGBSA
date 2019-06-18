cd ligand_2wf3_redo/
while read line
do
   splitted=($line)
   file=${splitted[0]}
   protein=${splitted[1]}

   if [ $protein == "4EWO" ]
   then
      echo $file $protein
   
      cd $file
      cp ../../scripts/leap_2WF3_mod.in leap.in 
      cp ../../ligand/${file}/LIG.frcmod ./
      cp ../../ligand/${file}/LIG.lib ./
      tleap -f leap.in > leap.log
      cd ../
   
   fi 

done < ../receptor.txt
cd ../
