# capitalize_first_letter.r

#' function capitalize_first_letter( string )
#' This functtions captialises the first letter of a string.  It was
#' orginally written by Dr. Arvind Singla
#' 
#' @param string is an input string  
#'
#' @return the input string with the first letter caapitalized

#'
#' @examples
#' 
capitalize_first_letter <- function( string ) 
    {
       c <- strsplit( string, " ")[[1]]
       paste(toupper(substring(c, 1,1)), substring(c, 2),
          sep="", collapse=" ")
}

capitalize_all_first_letters <- function( strings )
{
    map_chr( strings, capitalize_first_letter )
              
}

###############################################################################
# Tests
# Remove "#'s" to run them.
#
# names <- c( "peyton",
#             "Ela", 
#             "samantha",
#             "siah",
#             "melody" )
# names
# 
# capitalize_first_letter( names )
# 
# capitalize_all_first_letters( names )

