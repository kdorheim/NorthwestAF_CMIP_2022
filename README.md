# NorthwestAF_CMIP_2022
Materials for the July 2022 Northwest A&amp;F University CMIP talk

## Description of Repository Contents

* cdo_example.sh:  shell script that uses [cdo](https://code.mpimet.mpg.de/projects/cdo/wiki) to get the area weighted global mean temperature of a data file, requires that cdo has been installed on local machine 
* py_example.py: python script that uses pangeo to fetch a CMIP data file and then get the area weighted global mean temperature, requires that python is installed & pangeo dependencies are set up
* R_example.R: R script processes the area weighted global mean temperature from a nc file. Requires that R has been installed. 
* tas_Amon_E3SM-1-0_historical_r1i1p1f1_gr_187501-189912.nc: example data used by the cdo_example.sh and R_example.R script.  Downloaded from ESGF


### Resources

**About climate models & CMIP**

* Carbon Brief Article - CMIP6: the next generation of climate models explained 
* WCRP Coupled Model Intercomparison Project 

**CMIP6 Protocol & Documentation** 

* Eyring, V., Bony, S., Meehl, G. A., Senior, C. A., Stevens, B., Stouffer, R. J., and Taylor, K. E.: Overview of the Coupled Model Intercomparison Project Phase 6 (CMIP6) experimental design and organization, Geosci. Model Dev., 9, 1937-1958, doi:10.5194/gmd-9-1937-2016, 2016.
* Carbon Brief Article: How Shared Socioeconomic Pathways explore future climate change

**ESGF**

* Data portal https://esgf-node.llnl.gov/projects/cmip6/ 
* Errata - https://errata.es-doc.org/static/index.html 

**Documentation**

* Netcdf Documentation https://docs.unidata.ucar.edu/netcdf-c/current/index.html
* CDO Documentation https://code.mpimet.mpg.de/projects/cdo/wiki
* NCL Documentation https://www.ncl.ucar.edu/Download/
* R package NCDF4 https://cran.r-project.org/web/packages/ncdf4/index.html

**Python **

* Pangeo https://pangeo.io/quickstart.html#learn-about-pangeo-software
* Xarray https://docs.xarray.dev/en/stable/
