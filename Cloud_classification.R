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


ImportData <- function(file)
{
  data <- read.csv(file, header=FALSE)
  colnames(data)<-c("ER", "RH", "CTH", "CBH", "depth")
  return(data)
}

Cloud_Classification <- function(data)
{
  shallow <- data[data$CTH < 4000.0,]
  congestus <- data[data$CTH > 5000 & data$CTH < 9000,]
  return(list(shallow=shallow, congestus=congestus))
}




