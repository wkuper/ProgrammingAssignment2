## These functions cache and calculate the inverse 

## makeCacheMatrix creates a special matric object that can cache its inverse. This function contains 4 functions: set, get, setinverse and getinverse 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function (y) {
            x <<- y
            m <<- NULL
    }
        get <- function () x 
                setinverse <- function(solve) m <<- solve
                getinverse <- function() m 
                        list(set = set, get = get
                             setinverse = setinverse,
                             getinverse = getinverse)
}


## cacheSolve calculates or retrieves the inverse (from the cache) 

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m) {
                message ("getting cached data")
                return (m)
         }
         data <- x$get()
           m <- solve(data, ...)
           x$setinverse(m)
           m
         } 
}
