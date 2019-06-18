#Usage: bash fetch_score.sh foldername
#Example: bash fetch_score.sh ligand_2wf3_redo

rm mmgbsa_score.txt
cd $1
for folder in *
do
   
    echo $folder 
    result=$(grep 'DELTA TOTAL' ${folder}/FINAL_RESULTS_MMPBSA.dat)
    splitted=($result)
    echo $folder ${splitted[2]} ${splitted[3]} ${splitted[4]} ${splitted[7]} ${splitted[8]} ${splitted[9]} >> ../mmgbsa_score.txt
done
cd ../
