# test__decimate_time_v001.R

require(tidyverse)
require(lubridate)
require(stringr)

source('D:/R-Projects/Rsource/decimate_time_v001.R')

set.seed(1)                             # To duplicate random number sequences
                                        # for debugging.
hh <- 
    as.character( sample(1:23, 10 ))
hh <- 
    ifelse( str_length(hh) == 1, paste0( "0", hh), hh )

mm <-
    as.character( sample(1:59, 10))
mm <-  ifelse( str_length(mm) == 1, paste0( "0", mm), mm )

ss <- as.character( sample(1:59, 10))
ss <-ifelse( str_length(ss) == 1, paste0( "0", ss), ss )

time <- paste0(hh, ":", mm, ":", ss)
time

hours <- decimate_time( time )

tibble( time, hours )
