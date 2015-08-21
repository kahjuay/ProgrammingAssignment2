## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    #print(x)
    #print(solve(x))
    #get <- function(x) {
    #    print (x)
    #}
    get <- function() x
    list(get=get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
