## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## get return original matrix
## setsolve make inverse matrix from original matrix
## getsolve return inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  set <- function(y){
    x <<- y
    mi <<- NULL
  }
  
  get <- function() x
  setsolve <- function(solve) mi <<- solve
  getsolve <- function() mi
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

## Write a short comment describing this function
## mi is inverse matrix
## check the original matrix is invertible
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mi <- x$getsolve()
  if(!is.null(mi)){
    message("getting cached data")
    return (m)
  }
  
  #matrix is invertible?
  data <- x$get()
  if(det(data)== 0){
    return(0)
  }
  
  mi <- solve(data, ...)
  x$setsolve(mi)
  mi
}
