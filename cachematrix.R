## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
