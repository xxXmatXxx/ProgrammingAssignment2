## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Here is the function for making the matrix funtion and calculate the invers 
makeCacheMatrix <- function(s = matrix()) {  
  n <- NULL                                  
  seti <- function(q){                       
    s <<- q                                  
    n <<- NULL
  }
  geti <- function()s
  setinvers <- function(solve) n <<- solve
  getinvers <- function () n
  list(seti = seti, geti = geti, 
       setinvers = setinvers, 
       getinvers = getinvers)
  
}


## Write a short comment describing this function
##here is the function that getting the cache data which already solved from makecachematrix function 
## if there is object not calculate yet, this function will calculate it

cacheSolve <- function(s, ...) {
        ## Return a matrix that is the inverse of 'x'
  n <- s$getinvers()
  if(!is.null(n)){
    message("getting cached data")
    return(n)
  }
  datam <- s$geti()
  n <- solve(datam, ...)
  s$setinvers(n)
  n
}
