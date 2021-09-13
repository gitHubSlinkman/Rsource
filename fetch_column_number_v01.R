# fetch_column_number_v01.R

find_column_number <- 
  function( variable, data )
  {
    vnames <- names( data )
         
     
    match( variable,
            vnames,
            nomatch = 0 )
  }



###############################################################################
# Test and examples
###############################################################################

data( faithful )                        # Test data

head( faithful )                        # Verify data.

column <- find_column_number( "waiting", faithful )
