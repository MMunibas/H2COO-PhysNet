# H2COO-PhysNet


## USAGE

### The .npz data file
 
The data at CCSD(T)-F12a/aug-cc-pVTZ level of theory is saved in a compressed numpy binary file (.npz). 
Same for the data at CASPT2/aug-cc-pVTZ level of theory.
The .npz file contain a python dictionary with seven numpy arrays:

N: Number of atoms in structure (num_data,)
R: Cartesian Coordinates of atoms (in Angstrom [A]), (num_data, N, 3)
Q: Total charge (in elementary charges [e]), (num_data,)
D: Dipole moment vector (in elementary charges times Angstrom [eA]), (num_data, 3)
E: Potential energy with respect to free atoms (in electronvolt [eV]), (num_data,)
F: Forces acting on atoms (in electronvolt per Angstrom [eV/A]), (num_data, N, 3)
Z: Atomic number of atoms, (num_data, N)

 ACCESS DATA SET:

The data sets can be accessed using python:
>>> data = np.load("h2coo-ccsd_29612.npz")

The different keywords of the python dictionary can be listed using
>>> data.files
>>>['N', 'E', 'Q', 'D', 'Z', 'R', 'F']


and the individual entries can be loaded using the appropriate
keyword, e.g. for the energy
>>> energies = data["E"]


### PhysNet PESs for H2COO

PhysNet base model and TL model for H2COO system are stored in two folders,  "PhysNet_Base_model" and "PhysNet_TL_PES".

Note that, the model was trained using PhysNet based on Tensorflow 1.

### Inputs for MD simualtions

Input for MD simulations with two types of initial conditions are stored in "VibEx_CH" and "VibEx_CH_COO". 

The most important file is "test.str," in which the initial conditions are defined, in other words, the excitation of CH stretch mode is defined, or simultaneously, the excitation of CH stretch mode and the COO bending are defined.






