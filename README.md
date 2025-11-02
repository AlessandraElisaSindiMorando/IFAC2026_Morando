# LMI-based Formation Control with Collision Avoidance for Air-Ground Fleet

## Alessandra Elisa Sindi MORANDO, Jossue CARIÑO, Pedro CASTILLO,  Roberto SACILE, and Enrico ZERO.


### Overview 

This paper proposes a **formation controller** for a fleet composed of **two unicycles** and a **quadcopter**.
The formation problem is defined as a **min-max problem** whose optimal control strategy is **linear in the local measurements** of each agent, and the **matrix gains** are obtained by solving a **Linear Matrix Inequality**.
**Artificial repulsive forces** are added **to avoid inter-agent collisions and obstacles**.
The proposed control scheme was validated **both in simulation and through several experiments**, involving both **static** and **dynamic obstacles**.
The results show that the agents can **achieve the formation without crashes**. 

The work has been submitted to the **IFAC World Congress 2026** with Journal Option 
* **World Congress submission number:** `697`
* **Code:** `CEP71`

### Folder Contents

This directory contains the necessary files to compile the manuscript:
* **`IFAC_main.tex`**: The **main $\LaTeX$ source file** for the paper.
* **`bibliography.bib`**: The **bibliography file** containing all references.
* **`images/`**: Folder containing all figures.
* **`ifacconf.cls`**: The IFAC document class, adapted from `ifacmgt.cls` (Copyright ©1995 Elsevier Science Ltd;  Copyright ©2008 Juan A. de la Puente, International Federation of Automatic Control. *All rights reserved*)
* **`ifacconf.bst`**: The IFAC bibliography style, adapted from `merlin.mbs`( Copyright ©1994-2007 Patrick W Daly; Copyright ©2011 Juan A. de la Puente, International Federation of Automatic Control. *LaTeX Project Public License*)
* **`Makefile`**: Script for easy compilation and cleanup.
* **`README.md`**: This file.


### How to Compile 

This project uses a standard `Makefile` for compilation.

To remove all intermediate files (like `.aux`, `.log`, `.bbl`, `.blg`, etc.) that are generated during compilation, use the cleanup command:
```
make clean
```

To compile the source files and generate the final PDF (`IFAC_main.pdf`), run the following command in your terminal from this folder.
```
make
```
