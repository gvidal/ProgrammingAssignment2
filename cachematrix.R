## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# It basically receives the matrix so you can access to it at any time with get()
# You can override the current matrix with set().
# You get the result of its inverse matrix, however, the function to calculate it, it'll be calculated just once :)

makeCacheMatrix <- function(x = matrix()) {
  inverse <<- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse_matrix) inverse <<- inverse_matrix
  getinverse <- function() inverse
  list(set = set, get = get,
       getinverse = getinverse,
       setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
