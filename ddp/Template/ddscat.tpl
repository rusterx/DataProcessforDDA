' ========== Parameter file for v7.3 ===================' 
'**** Preliminaries ****'
'NOTORQ' = CMTORQ*6 (DOTORQ, NOTORQ) -- either do or skip torque calculations
'PBCGS2' = CMDSOL*6 (PBCGS2, PBCGST, GPBICG, QMRCCG, PETRKP) -- CCG method
'GPFAFT' = CMETHD*6 (GPFAFT, FFTMKL) -- FFT method
'GKDLDR' = CALPHA*6 (GKDLDR, LATTDR, FLTRCD) -- DDA method
'NOTBIN' = CBINFLAG (NOTBIN, ORIBIN, ALLBIN)
'**** Initial Memory Allocation ****'
100 100 100 = dimensioning allowance for target generation
'**** Target Geometry and Composition ****'
'FROM_FILE' = CSHAPE*9 shape directive
no SHPAR parameters needed
1         = NCOMP = number of dielectric materials
'../diel/Au_evap' = file with refractive index 1
'**** Additional Nearfield calculation? ****'
0 = NRFLD (=0 to skip nearfield calc., =1 to calculate nearfield E)
0.5 0.5 0.5 0.5 0.5 0.5 (fract. extens. of calc. vol. in -x,+x,-y,+y,-z,+z)
'**** Error Tolerance ****'
1.00e-5 = TOL = MAX ALLOWED (NORM OF |G>=AC|E>-ACA|X>)/(NORM OF AC|E>)
'**** Maximum number of iterations ****'
1000     = MXITER
'**** Integration cutoff parameter for PBC calculations ****'
1.00e-2 = GAMMA (1e-2 is normal, 3e-3 for greater accuracy)
'**** Angular resolution for calculation of <cos>, etc. ****'
0.5	= ETASCA (number of angles is proportional to [(3+x)/ETASCA]^2 )
'**** Vacuum wavelengths (micron) ****'
0.350 1.000 200 'LIN' = wavelengths (first,last,how many,how=LIN,INV,LOG)
'**** Refractive index of ambient medium'
1.0000 = NAMBIENT
'**** Effective Radii (micron) **** '
0.032356368 0.032356368 1 'LIN' = eff. radii (first, last, how many, how=LIN,INV,LOG)
'**** Define Incident Polarizations ****'
(0,0) (1.,0.) (0.,0.) = Polarization state e01 (k along x axis)
2 = IORTH  (=1 to do only pol. state e01; =2 to also do orth. pol. state)
'**** Specify which output files to write ****'
0 = IWRKSC (=0 to suppress, =1 to write ".sca" file for each target orient.
'**** Specify Target Rotations ****'
0.    0.   1  = BETAMI, BETAMX, NBETA  (beta=rotation around a1)
0.    0.   1  = THETMI, THETMX, NTHETA (theta=angle between a1 and k)
0.    0.   1  = PHIMIN, PHIMAX, NPHI (phi=rotation angle of a1 around k)
'**** Specify first IWAV, IRAD, IORI (normally 0 0 0) ****'
0   0   0    = first IWAV, first IRAD, first IORI (0 0 0 to begin fresh)
'**** Select Elements of S_ij Matrix to Print ****'
6	= NSMELTS = number of elements of S_ij to print (not more than 9)
11 12 21 22 31 41	= indices ij of elements to print
'**** Specify Scattered Directions ****'
'LFRAME' = CMDFRM (LFRAME, TFRAME for Lab Frame or Target Frame)
0 = NPLANES = number of scattering planes
0.  0. 180. 5 = phi, theta_min, theta_max (deg) for plane A
90. 0. 180. 5 = phi, theta_min, theta_max (deg) for plane B
