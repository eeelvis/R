# cachesolve() search for inverse in the cache fisrt and if null, use solve() instead and cache the result
cacheSolve <- function(x, ...) {
        inv <- x$getinverse() # get inverse from cache
        # if a cache exists, just return the cache value without calculation
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        # if no cache, use solve() to calculate the inverse
        data <- x$get()
        inv <- solve(data, ...)
        # set the inverse to cache
        x$setinverse(inv)
        inv
}
