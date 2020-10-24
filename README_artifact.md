# Artifact for submission 157


This is an artifact created for our TACAS submission: _František Blahoudek, Petr
Novotný, Melkior Ornik, Pranay Thangeda, and Ufuk Topcu._ **Fuel in Markov
Decision Processes: A Practical Approach to Consumption.**

## What is inside
When installed, the artifact contains:
 * FiMDP with tutorials, and documentation
 * FiMDPEnv,
 * Jupyter notebooks and scripts used in Section 6: _Evaluation_ in the paper,
 * Storm (used in the comparison),
 * and all dependencies for both FiMDP and Storm.

The artifact contains the sources and users need to install all the relevant
tools. Compiling Storm (and also Spot, a dependency of FiMDP) **requires a lot
of time and memory**.

## How to install the artifact

In short, run the following.

```sh
sudo ./install_dependencies.sh && sudo ./install_fimdp.sh
```

The scripts install all dependencies (including Storm and Spot) and then FiMDP
and the related tools. The scripts use automatically the maximum available cores
(decreases time, increases peak memory consumption). We recommend allocating
**10GB RAM** for the VM if possible, and a decent amount of time for you.
Installing over night is not a bad idea at all.

## How to use the artifact

The sources of FiMDP and FiMDPEnv are in the corresponding directories. The
documentation of FiMDP is in directory `fimdp-documentation` and can be viewed
in Firefox by selecting the index.html.

The folder tutorials contian interactive tutorials on how to use FiMDP and also
demonstrating some advanced features including those presented in the paper. The
best way to run the tutorials is launching Jupyter-lab (which is also included
in the artifact) in the directory tutorials.

```sh
cd tutorials
jupyter lab
```

The best starting point is the README.md file in this folder. You can view it
rendered by right-clicking its name then selecting `Open With → Markdown
Preview`.

### Replicating evaluation of FiMDP

Finally, the directory `evaluation` contains Jupyter notebooks with code that
creates plots and figures for Section 6 of the paper. Again, run jupyter lab in
that folder to see them. Again, see the README.md file in that directory
(right-click: Open With → Markdown Preview) which shortly describes the
notebooks and links them notebooks to the subsections in the paper. Follow the
explanations in the notebooks to replicate the results.