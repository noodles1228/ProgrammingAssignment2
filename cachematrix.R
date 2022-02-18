# in short, these functions main purpose is to return the inverse of an invertible matric

#creates get and set functions which will allow us to run cacheinverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


#gets the cache data
cacheinverse <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("cache data")
                return(i)
        }
        mat_data <- x$get()
        i <- solve(mat_data, ...)
        x$setinverse(i)
        i
}






