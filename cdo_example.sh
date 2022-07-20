# cdo example
# offical documentation available at https://code.mpimet.mpg.de/projects/cdo/wiki

# cdo function_name input_file output_file
cdo fldmean,weights=TRUE ./tas_Amon_E3SM-1-0_historical_r1i1p1f1_gr_187501-189912.nc global_avg.nc
