## first function creates an object that chaches the inverse, and the second calculates the inverse or retrieves the already caclulated value.


## makeCacheMatrix function creates a special "matrix" object that caches its inverse

makeCacheMatrix <- function(x = matrix()) {

inverse <- NULL
set <<- function(y) {
	x <<- y
	inv <<- NULL
}

get <- function() x
setinverse <- function(inv) inverse <<- inv
getinverse <- function() inverse
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)

}


## cacheSolve function calculates the inverse of the "matrix" returned by previous function makeCacheMatrix.
## if the inverse has already been calculated then function retrieves the cached value 

cacheSolve <- function(x, ...) {

inv <- x$getinverse()
if(!is.null(inv)) {
	message("getting cached data")
	return(inv)
}
        
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
        
}
