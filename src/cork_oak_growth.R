# Cork oak height growth model
# Authors: Mariola Sánchez-González, Margarida Tomé, Gregorio Montero
# Source: https://hal.archives-ouvertes.fr/hal-00883925/document

# height_t2: oak height at time 2 (meters)
# height_t1: oak height at time 1 (meters)
# t1: tree age at time 1, (years)
# t2: tree age at time 2 (years)


#fcn to estimate the height of an oak based on prior heights/times 
#how can we use this fcn in a separate RMD ? 
#Ccreating documentation: code -> insert roxygen skeleton 


#' Title: Estimate cork oak growth 
#' 
#' Description: This is a function from [paper name] which calculates the tree height for cork oaks given some initial age and height. 
#'
#'Arguments: 
#' @param height_t1 This is the tree height at the starting year
#' @param t1 A number indicating the starting year (useful to include the class )
#' @param t2 A number indicating the ending year 
#'
#' @return
#' @export
#'
#' @examples
height_t2 <- function(height_t1, t1, t2) {
  20.7216 / (1 - (1 - 20.7216 / height_t1) * (t1 / t2) ^ 1.4486)
}

