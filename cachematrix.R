## The first function can set and get the matrix. Also the function can calculate
## the meaning of the inverted matrix and save it to cache.
## The second function at first checks cache. If the inverted matrix already
## exists the function shows message and load inverted matrix from cache

## SORRY MY ENGLISH IS NOT VERY GOOD!!!

## The first function (see description on the top)

makeCacheMatrix <- function(x = matrix()) {
        i <- 0
        setMatrix <- function(y) {
                x <<- y
                i <<- NULL
        }
        getMatrix <- function() x
        imatrix <- function() i <<- solve(x)
        getimatrix <- function() i
        list(set = setMatrix, 
             get = getMatrix,
             setinversed = imatrix, 
             getinversed = getimatrix)
}


## The second function (see description on the top)

cacheSolve <- function(x, ...) {
        i <- x$getinversed()
        if (is.null(i)) {
                print("We already have the inversed matrix in the cache")
                return(i)
        } 
        neo <- x$get()
        i <- solve(neo, ...)
        i
        ## Return a matrix that is the inverse of 'x'
}
