## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    #Initiating matinv to store inversed matrix
    matinv <- NULL
    
    get <- function() x
    
    set <- function(y) {
        #replace matrix x with matrix y
        x <<- y
        matinv <<- NULL
    }
    
    setinv <- function(myinv) {
        matinv <<- myinv
    }
    
    getinv <- function() matinv
    
    list(get=get,set=set, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    matinv <- x$getinv()
    
    if (!is.null(matinv)) {
        message("getting cached data")
        return(matinv)
    }
    
    data <- x$get()
    matinv <- solve(data, ...)
    x$setinv(matinv)
    print(matinv)
}
