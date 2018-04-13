# Imports a file of all of the clouds identified and their properties and turns it
# into a variable data frame. It then classifies each cloud
# into either shallow cumulus (CTH: 0-4km) or congestus (CTH: 5-9km) and saves the properties
# in separate files. 
#
# ARGS
# file:     file being used (contains all of the clouds and properties)
# data:     data frame of the data
#
# OUTPUT - two data frames, each containing all of the cloud properties of each regime
# shallow - ER, CTH, CBH, thickness, RH
# congestus - ER, CTH, CBH, thickness, RH

#***DAN: these function specs are not precise enough. I do not know what you are talking about. I would not be able to call this function, nor would I know after reading this what it is for.

ImportData <- function(file)
{
  data <- read.csv(file, header=FALSE)
  colnames(data)<-c("ER", "RH", "CTH", "CBH", "depth")
  return(data)
}

Cloud_Classification <- function(data, CTHmax_s, CTHmin_c, CTHmax_c)
{
  shallow <- data[data$CTH < CTHmax_s,]
  congestus <- data[data$CTH > CTHmin_c & data$CTH < CTHmax_c,]
  return(list(shallow=shallow, congestus=congestus))
}




