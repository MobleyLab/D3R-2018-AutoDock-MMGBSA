rm mmgbsa_score.txt
cd ligand/
for folder in *
do
   
    echo $folder 
    result=$(grep 'DELTA TOTAL' ${folder}/FINAL_RESULTS_MMPBSA.dat)
    splitted=($result)
    echo $folder ${splitted[2]} ${splitted[3]} ${splitted[4]} ${splitted[7]} ${splitted[8]} ${splitted[9]} >> ../mmgbsa_score.txt
done
cd ../
