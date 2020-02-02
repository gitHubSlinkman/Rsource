# make_random_missing_values.R
#

make_random_missing_values <- 
    function( data, percent, id=NULL ){
        if( is.null( id ) ){
            rows <- dim( data )[1]
            data$id <- 1:rows }
        
    }}




test    <- iris                         # Load test data set
percent <- 0.10                         # Percent missing values ...
variables <- names( test )

