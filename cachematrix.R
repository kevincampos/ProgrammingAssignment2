## This function creates a special "matrix" object that can cache its inverse. (from coursera.org's assigment description)

makeCacheMatrix <- function(x=matrix()) {
	matrixInverse <- NULL
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) matrixInverse <<- matrixInverse
	getInverse <- function() matrixInverse
	list(set = set,
	get=get,
		setInverse = setInverse,
		getInverse = getInverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. (from coursera.org's assigment description)

cacheSolve <- function(x,...) {
	matrixInverse <- x$getInverse()
	if(!is.null(matrixInverse)){
	message("retrieving data")
	return(matrixInverse)
}
	matrix <- x$get()
	inverseMatrix <- solve(matrix, ...)
	x$setInverse(matrixInverse)
}