# capitalize_first_letter.r

#' function capitalize_first_letter
#'
#' @param y is an input string  
#'
#' @return the input string with the first letter caapitalized

#'
#' @examples
#' 
capitalize_first_letter <- function(y) 
    {
       c <- strsplit(y, " ")[[1]]
       paste(toupper(substring(c, 1,1)), substring(c, 2),
          sep="", collapse=" ")
}


