# Uses the separated cloud type and precipitation data frames to analyze dependencies,
# correlations, and significances. This is done by making plots of ER vs RH for all regimes
# and ER vs thickness for all regimes and calculating R^2. 
#
# ARGS
# x:        The x values used in the plot and correlation
# y:        The y values used in the plot and correlation
#
# OUTPUT 
# Rsqr:     The R^2 values of entrainment correlations with each predicted dependency for each regime.
# If all regimes are run, there should be a total of 8 values outputted. 

#***DAN: these function specs are not precise enough. I do not know what you are talking about. I would not be able to call this function, nor would I know after reading this what it is for.

Analyze <- function(x,y)
{
  test_model <- lm(x~y)
  Rsqr <- summary(test_model)$r.squared
  return(Rsqr)
}

