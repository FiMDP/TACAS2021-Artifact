# Artifact for submission 157


This is an artifact created for our TACAS submission: 
_František Blahoudek, Petr Novotný, Melkior Ornik, Pranay Thangeda, and Ufuk Topcu._
**Fuel in Markov Decision Processes: A Practical Approach to Consumption.**

## What is inside
When istalled, the artifact contains:
 * FiMDP with tutorials, and documentation
 * FiMDPEnv,
 * Jupyter notebooks and scripts used in Section 6: _Evaluation_ in the paper,
 * Storm (used in the comparison),
 * and all dependencies for both FiMDP and Storm.

The artifact contains the sources and users need to install all the relevant tools. Compiling Storm (and also Spot, a dependency of FiMDP) **requires a lot of time and memory**.

## How to install the artifact
In short, run the following.
```sh
sudo ./install_dependencies.sh && sudo ./install_fimdp.sh
```
The scripts install all dependencies (including Storm and Spot) and then FiMDP and the related tools. The sctipts use automatically the maximum available cores (decreases time, increases peak memory consumption). We recommend allocating **8GB RAM** for the VM if possible, and a decent amount of time for you. Installing over night is not a bad idea at all.

## How to use the artifact
The sources of FiMDP and FiMDPEnv are in the corresponding directories after unziping the artifact. The documentation of FiMDP is in directory documentation and can be viewed in Firefox.


Evaluation
FiMDP tutorials
