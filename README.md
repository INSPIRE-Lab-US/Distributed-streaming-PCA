# Distributed-streaming-PCA

In the following, we first explain the directory structure in relation to reproducing results in the paper. Next, we explain the naming convention for the files and describe the files that can be run to reproduce the results.

## Directory Structure

- Code corresponding to Figure 2 is in directory: âSynthetic dataâ.
- Code to generate Figure 3 can be found in directory named: âDependence on problem parametersâ. This directory is further subdivided into subdirectories named: "VaryDim", "VaryGap", and "VaryUpperBound", which contain codes for varying dimensionality of data, Eigengap of the ground truth covariance matrix, and the maximum norm of the input data/vectors.
- Codes for Figure 5 and Figure 6 are in directories âMNIST codeâ and âHIGGS codeâ, respectively.
- Each of the above directories contains âResultsâ directory, which contains scripts for plotting. Exception to this convention are "VaryDim" and "VaryGap" directories which do not have a separate directories for results instead the results are available in the same directory as rest of the code.

## Naming Convention

- Each *.m file starts with the characters âMinibatchKrasulinaâ, followed by the type of experiment (e.g., for synthetic data, the word âSyntheticâ). This is followed by the batch size; e.g, âMinibatchKrasulina_Synthetic_B10.mâ contains code for synthetic data for a batch size of 10.
- Scripts containing codes for Figure 2b, 5b, and 6b end with the suffix âLatencyâ, in addition to the convention in the first bullet point.
-  For experiments investigating the dependence of problem parameters the naming convention in Bullet one is followed by a suffix that describes the parameter value, e.g., for Eigengap of 0.1 script in "VaryGap" directory has a suffix "_gap0_1".
