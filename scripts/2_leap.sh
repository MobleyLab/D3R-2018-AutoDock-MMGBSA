cd ligand/

for file in BACE_*
do
   echo $file
   cd $file
   parmchk -i LIG.mol2 -f mol2 -o LIG.frcmod
   tleap -f ../../scripts/leap_LIG.in > leap_LIG.log
   cd ../
done
cd ../
