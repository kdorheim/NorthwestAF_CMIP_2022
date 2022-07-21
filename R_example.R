
# R package that supports working with nc files
library(ncdf4)

# Establish the connection to the nc file
nc <- nc_open("./tas_Amon_E3SM-1-0_historical_r1i1p1f1_gr_187501-189912.nc")

# Extract the temperature data from the nc file
tas_data <- ncvar_get(nc = nc, varid = "tas")

# Extract the latitude to make the area weights
lat <- ncvar_get(nc, "lat")
lat_radian <- lat * 0.0174533
weights <- cos(lat_radian)

# Convert the vector of weights to a data frame to
# be compatible with with the temperature data.
weights_df <- matrix(rep(weights, 360), nrow = 360, byrow = FALSE)

# Apply the weighted mean function to each time slice of data
# to get the global average
out <- apply(X = tas_data, MARGIN = 3, FUN = weighted.mean, w = weights_df)



