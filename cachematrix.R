## Put comments here that give an overall description of what your
## functions do

## This function creates the matrix object that can cache its inverse 

cachematrix <- function(x = matrix()) {
  ma <- NULL
  set <- function(y){
    x <<- y
    ma <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) ma <<- inverse
  getInverse <- function() ma 
  list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}




## This function computes the matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ma <- x$getInverse()
  if(!is.null(ma)){
    message("getting cached data")
    return(ma)
  }
  mat <- x$get()
  ma <- solve(mat,...)
  x$setInverse(ma)
  ma
}
