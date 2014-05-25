## TBLackey's Programming Assignment 2, for Coursera Data Science course, R Programming module
## The functions below are written to a. Cache a matrix and its inverse and b. either invert a matrix or retrieve the cache inverse

## makeCacheMatrix creates a list of function to a.set a matrix b. get a matrix c.set the inverse matrix d. get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  setmatrix <- function(y) {
    x <<- y
    i <<- NULL
  }
  getmatrix <- function() x
  setinverse<- function(inverse) i <<- inverse
  getinverse <- function() i
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve inverts a cached matrix. If the inverted matrix is already cached, it returns the inverse and set the inverse in the cache

cacheSolve <- function(l, ...) {
  i <- l$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- l$getmatrix()
  i <- solve(data, ...)
  l$setinverse(i)
  i
}



