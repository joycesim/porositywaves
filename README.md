# Porosity waves models for bathymetry - Same as Sim et al 2020

Two phase flow models applied to mid-ocean ridges

This suite of models accompany the paper:
Sim, S. J. (2022). Persistent magma-rich waves beneath mid-ocean ridges explain long periodicity on ocean floor fabric, GRL

To run all six models presented in the paper:
1) Build TerraFERMA (https://terraferma.github.io/) 
2) Build and run models using [tfsimulationharness --run ridgemodel.shml].

The models span two parameters:
1) Half spreading rates, U_0 = 2 -- 8 cm/yr
2) Intrinsic permeability, K_0 = 9e-6 -- 4e-9 m2.  

The models are one-way coupled such that the the solid half is solved once at the beginning, then the fluid is solved at every time step.
Note: Freezing rate should change linearly with spreading rates such that at U_0 = 4 cm/yr, freezing rate, Rrate = 100. 
