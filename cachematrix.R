    create a square matrix that I know is invertible
    invoke makeCacheMatrix() function passing it the matrix I created.  This returns a list of functions.
    invoke cacheSolve() function passing it the list of functions returned.  This should calculate the matrix and save it in the cache.
    invoke cacheSolve() function a second time passing to it the list of functions.  On this second invocation you should see the message.

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        im <- NULL
        set <- function(y) {
                x <<- y
                im <<- NULL
        }        
        
        
        get <- function() x
        setinvmat <- function(InvMat) im <<- InvMat
        getinvmat <- function() im
        list(set = set, get = get,
             setinvmat = setinvmat,
             getinvmat = getinvmat)

}


## Write a short comment describing this function

cacheSolve <- function(x=list(), ...) {
        ## Return a matrix that is the inverse of 'x'


       invmat <- x$getinvmat()#from cache
        if(!is.null(invmat)) {
                message("getting cached data")
                return(invmat)
        }

        mat <- x$get()
         invmat<- solve(mat)
         x$setinvmat(invmat)
         invmat


}
