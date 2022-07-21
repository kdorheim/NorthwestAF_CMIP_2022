
# Packages
import numpy as np
import xarray as xr
import fsspec

# Load the data file
ds = xr.open_zarr(fsspec.get_mapper("gs://cmip6/CMIP6/CMIP/E3SM-Project/E3SM-1-0/historical/r2i1p1f1/Amon/tas/gr/v20190729/"))

# Extract the lat info to calculate the area weights
lat = ds["lat"]
weight = np.cos(np.deg2rad(lat))
weight /= weight.mean()

# The weighted average at each time slice
other_dims = set(ds.dims) - {'time'}
rslt = (ds * weight).mean(other_dims)


