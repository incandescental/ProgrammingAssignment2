## The following pair of functions creates a special "matrix" object 
## that can cache its inverse and then computes the inverse of the 
## special "matrix". If the inverse has already been calculated then 
## 'cachesolve' retrieves the inverse from the cache.

## The first function checks whether x is a matrix and creates a NULL 
## placeholder if not. It will store any matrix it is passed in the 
## cache.

makeCacheMatrix <- function(x = NULL) {
        if(is.matrix(x)){y <<- x}
        else{y <<- NULL}
}

## This function checks to see if a matrix is already stored in the 'y'
## cache. If not then it inverts the matrix it's been passed and then
## calls makeCacheMatrix which then stores the inversion in the cache
## for future use.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(y)) {
                message("getting cached data")
                return(y)
        }
        solution <- solve(x)
        makeCacheMatrix(solution)
        solution
}
