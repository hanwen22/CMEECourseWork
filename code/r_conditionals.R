is.even.default <- function(n = 2) {
  if (n %% 2 == 0) {
    return(paste(n, 'is even!'))
  } else {
    return(paste(n, 'is odd!'))
  }
}

is.even.default()
is.even.default(6)
is.even.default(n = 3)

report_height <- function(height_m, digits = 2) {
  round(height_m, digits = digits)
}

report_height(12.345)             # Returns 12.35
report_height(12.345, digits = 1) # Returns 12.3

report_height(8.678)
report_height(8.678, digits = 1)
report_height(digits = 1)
is.even()

# Checks if a number is a power of 2
is.power2 <- function(n) {
  if (log2(n) %% 1==0) {
    return(paste(n, 'is a power of 2!'))
  } else {
  return(paste(n,'is not a power of 2!'))
    }
}

is.power2(4)