# Uses the separated cloud type data frames to classify them further into precipitating (CBH < 100m) or non-
# precipitating (CBH > 100m)
#
# ARGS
# cloud:     data frame containing all cloud properties of each convective regime
# 
#
# OUTPUT - four data frames, each containing all of the cloud properties of the four regimes
# shallow_precip - ER, CTH, CBH, thickness, RH
# shallow_noprecip - ER, CTH, CBH, thickness, RH
# congestus_precip - ER, CTH, CBH, thickness, RH
# congestus_noprecip - ER, CTH, CBH, thickness, RH


Precip_Classification <- function(cloud)
{
  
  
  
}