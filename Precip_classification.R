# Uses the separated cloud type data frames to classify them further into precipitating (CBH < 100m) or non-
# precipitating (CBH > 100m)
#
# ARGS
# cloud:     data frame containing all cloud properties of each convective regime
#***DAN: what are the columns? Where does this come from? 
#
# OUTPUT - four data frames, each containing all of the cloud properties of the four regimes
# precip - ER, CTH, CBH, thickness, RH
# noprecip - ER, CTH, CBH, thickness, RH

#***DAN: these function specs are not precise enough. I do not know what you are talking about. I would not be able to call this function, nor would I know after reading this what it is for.

Precip_Classification <- function(cloud, CBH_thresh)
{
  precip <- cloud[cloud$CBH < CBH_thresh,]
  noprecip <- cloud[cloud$CBH > CBH_thresh,]
  
  return(list(precip=precip, noprecip=noprecip))
}

