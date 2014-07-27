## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- matrix(list(), nrow=nrow(x),ncol=ncol(x))
        set <- function(y) {
                x <<- y
               
        }
        get <- function() x
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set = set, 
		 get = get,
             setinv = setinv,
             getinv = getinv)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(sapply(inv,is.null)[[1]])
        {data <- x$get()
        inv <- solve(data)
        x$setinv(inv)} else {
              #  message("getting cached data")
                return(inv)
        }
        inv

}
