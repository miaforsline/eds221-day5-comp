# Testing testthat
#date: 8/13/2021 (Week 2 Day 5)

library(testthat)
library(devtools)
library(remotes)

#Create a function that takes any numeric data frame (all variables are numbers), finds the mean of all columns, then finds the max column mean, and the min column mean from that dataframe, & returns those max/mean values in a vector (min_mean_val, max_mean_val). 

# apply(X = df, MARGIN = 2(columns), FUN = mean, na.rm = TRUE)

#' Mean column values
#' 
#' Calculate the maximum and minimum mean column values of a numeric dataframe 
#'
#'Argument: 
#' @param df_name The name of an existing dataframe comprised of numeric elements. 
#'
#' @return
#' @export
#'
#' @examples
max_min_mean <- function(df_name){
  col_means <- apply(X = df_name, MARGIN = 2, FUN = mean, na.rm = TRUE)
  col_max <- max(col_means)
  col_min <- min(col_means)
  col_range <- c(col_min, col_max)
  return(col_range)
}

max_min_mean(mtcars)

expect_length(object = max_min_mean(df = mtcars), n = 2) #test the object produced from the fcn and expect a length of 2
expect_true(max_min_mean(df = mtcars)[1] < max_min_mean(df = mtcars)[2]) #test that the min < max of the output 
expect_type(object = max_min_mean(df = mtcars), type = "double") #class() vs typeof()
