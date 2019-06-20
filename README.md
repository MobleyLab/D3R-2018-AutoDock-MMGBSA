# D3R-Grand Challenge 4 
## D3R Grand Challenge 4: Comparison of ligand affinity ranking using Autodock-GPU and MM-GBSA scores 

This repository houses all the files that we used for our MM-GBSA calculations for our D3R Grand Challenge 4 participation, as detailed in our collaborative manuscript entitled "Comparison of ligand affinity ranking using AutoDock-GPU and
MM-GBSA scores in the D3R Grand Challenge 4". Here you will find all the files needed to perform MM-GBSA end-point free energy estimates on the BACE-1 subsets provided by the D3R Grand Challenge 4 organizers for the affinity ranking subchallenge.
Here, we provide the input files of the receptors (pdb files) and the 154 ligands (mol2 files) that we prepared for Stage 2 affinity ranking subchallenge. The scripts used to perform MD simulations and MM-GBSA calculations are also available.

## Manifest

- [`ligands`](ligands): directory containing the mol2 files of the 154 ligands and the respective MM-GBSA results.
- [`protein_oe`](protein_oe): directory containing the pdb files of the structures that we used to dock and prepare the 154 receptor-ligand complexes.
- [`scripts`](scripts): directory containing the scripts that we used to conduct the parametrization of the receptors and the ligands using amber and tleap respectively, the MD simulations and the MM-GBSA calculations.
- [`ligand_4EWO_singleProt`](ligand_4EWO_singleProt): directory containing the MM-GBSA results of the protein-ligand complexes using the BACE-1 structure (PDB code: 4EWO) with a single protonated aspartyl dyad (Asp32H Asp228-).
- [`ligand_2wf3_redo`](ligand_2wf3_redo): directory containing the MM-GBSA results of the protein-ligand complexes using the BACE-1 structure (PDB code: 2WF3); the ligands in these complexes were originally docked in 4EWO and during our retrospective analysis, we used 2WF3 to dock and model them.
- [`fetch_score.sh`](fetch_score.sh): script used to fetch all the MM-GBSA scores of the receptor-ligand sets that we modeled.
- [`charge.txt`](charge.txt): file containing the charges that we used to model each ligand in the BACE-1 dataset.
- [`receptor.txt`](`receptor.txt): file containing the PDB ID of the receptor that we used to dock each ligand in the BACE-1 dataset.
- [`mmgbsa_score.csv`](mmgbsa_score.csv): file containing the MM-GBSA scores of our Stage 2 affinity ranking submission.
- [`mmgbsa_score_4EWO_singleProt.csv`](mmgbsa_score_4EWO_singleProt.csv): file containing the MM-GBSA scores of the ligands modeled in BACE-1 (PDB code: 4EWO) with a single protonated aspartyl
 dyad (Asp32H Asp228-).
- [`RMSD.csv`](RMSD.csv): file containing the RMSD values of the ligands between the initial docked poses and the final states at the end of the MD simulations for the two protonation states of 4EWO: i) Asp32H, Asp228H and ii) Asp32H, Asp228-.















