# file used to find out what are the charges of each of the ligands

from openeye.oechem import *
import glob

mol = OEMol();
ifs =  oemolistream()

for fid in glob.glob('*'): 
   charge = 0
   if ifs.open('%s/lig_pose.mol2' %fid):
       for mol in ifs.GetOEGraphMols():
         for atom in mol.GetAtoms():
           charge += atom.GetFormalCharge()
   
   print(fid, charge)

