# Prototype analysis of imutation for ksteps
#
source('~/R-Projects/Rsource/load_packages_v001.R')        # Load wudely used packages ...
#
source('~/R-Projects/Rsource/compute_dates_v003.R')        # Compute dates ...
#
source('~/R-Projects/MyWalks/functions/get_walks_v004.R')  # To get walks
#
dates <- compute_dates()                                   # Compute dates ...
#
file_path <- file.path( "data", "walks.csv")               # Specify file oath ...            

walks <- get_walks( file_path )                            # Get the walks data 

six_months <-
    walks %>%                                              # Keep only days that are
        filter( date > dates$date_180_days_ago )  %>%      # Less than 180 days old
        filter( walked == 1 )                              # and a walked occured ...

missing_ksteps <-                                          # Find all cases with
    six_months %>%                                         # missing ksteps
        filter( is.na(ksteps ))

complete_cases <- setdiff( six_months,                     # Remove missing cases
                           missing_ksteps )                # from prediction data ..

#####################################################################################
# We compare the simple libear regression with a log-log regression model here
#####################################################################################

m_01 <- lm( ksteps ~ miles,
           data=complete_cases)
summary( m_01 )

diagnostics_m01 <- tidy( m_01 ) 

loglog <- lm( log(ksteps ) ~ log(miles),
              data=complete_cases )
summary(loglog)


