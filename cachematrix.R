## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    #Initiating matinv to store inversed matrix
    matinv <- NULL
    
    get <- function() {
        x
    }
    
    set <- function(y) {
        #replace matrix x with matrix y
        #this function is only used for testing purposes
        x <<- y
        matinv <<- NULL
    }
    
    setinv <- function(myinv) {
        #overwriting the setinv value with my own matrix
        matinv <<- myinv
    }
    
    getinv <- function() {
        #returning the value of matinv, if it exists, otherwise NULL
        matinv
    }
    
    list(get=get,set=set, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    #Grabbing the value of matinv, if it exists
    matinv <- x$getinv()
    
    #If matinv exists, cached data is returned
    if (!is.null(matinv)) {
        message("getting cached data")
        return(matinv)
    }
    
    #matinv is null, so solving inverse of matrix
    #set matrix provided by user into data variable
    data <- x$get()
    
    #set value of inverse matrix into matinv
    matinv <- solve(data, ...)
    
    #set that inverse matrix using matrix solved earlier
    x$setinv(matinv)
    
    #printing out the solved inverse matrix
    print(matinv)
}
