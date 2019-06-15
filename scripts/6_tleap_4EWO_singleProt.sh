mkdir ligand_singleProt/
cd ligand_singleProt/
while read line
do
   splitted=($line)
   file=${splitted[0]}
   protein=${splitted[1]}

   if [ $protein == "4EWO" ]
   then
      echo $file $protein
      mkdir $file
      cd $file
      cp -r ../../ligand/${file}/LIG.* ./ 
      cp ../../scripts/leap_4EWO_singleProt.in leap.in 
      tleap -f leap.in > leap.log
      cd ../
   
   fi 

done < ../receptor.txt
cd ../
