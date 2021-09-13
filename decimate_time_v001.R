# decimate_time_v001.R

require(tidyverse)                      # I live in the tidyverse.
require(stringr)                        # For tidyverse string functions.

################################################################################
# This function takes a duration recored as a character string hh:mm:ss and
# converts to a decimal number of hours
################################################################################

decimate_time <- 
    function( duration )
    {
       hh <- as.numeric( str_sub( time, start = 1, end = 2 )) 
       mm <- as.numeric( str_sub( time, start = 4, end = 5 ))
       ss <- as.numeric( str_sub( time, start = 7, end = 8 ))
       
       hours <- hh + mm/60 + ss/3600
       round( hours, 3 )
    }