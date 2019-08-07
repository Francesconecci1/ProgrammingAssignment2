## Put comments here that give an overall description of what your
## functions do 
## according to programming assignnment 2 lexical scoping
## in this file I-m writing 2 function
## 1-makeCacheMatrix calcs a inv of a matrix and store in cache the result
## 2-cacheSolve find the result in cache and if doesn=t try it calcs new results

## Write a short comment describing this function
##1-makeCacheMatrix calcs a inv of a matrix and store in cache the result

makeCacheMatrix <- function(x = matrix()) {

 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## Write a short comment describing this function
## 2-cacheSolve find the result in cache and if doesn=t try it calcs new results

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setsolve(m)
        m
}
