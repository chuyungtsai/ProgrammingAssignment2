## Just follow the instruction on coursera

## make cache matrix by solve(x)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setcache <- function(solve) m <<- solve
  getcache <- function() m
  list(set=set, get=get, setcache= setcache, getcache= getcache)
}


## Return a matrix that is the inverse of 'x', following the example on the coursera

cacheSolve <- function(x, ...) {
  m <- x$getcache()
  if(!is.null(m)) {
    message("getting cached matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setcache(m)
  m
}
