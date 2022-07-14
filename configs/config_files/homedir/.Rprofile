## CRAN mirror
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://stat.ethz.ch/CRAN/"
  options(repos = r)
})

# help page in terminal
options(help_type = "text")
options(digits=5)
options(max.print=200)

# some utility function
`%>%` <- function(x, f, ...) f(x, ...)
`%grep%` <- function(x, pattern, ...) grep(pattern, x, value=TRUE, ...)
