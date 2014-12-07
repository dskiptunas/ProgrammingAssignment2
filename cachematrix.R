## Put comments here that give an overall description of what your
## functions do

## 1st  function, makeCacheMatrix creates a matrix 
## object that can cache the input matrix, 

makeCacheMatrix <- function(x = matrix()) {
        z<-NULL
        set<-function(y){
                x<<-y
                z<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) z<<- solve
        getmatrix<-function() z
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}



## The 2nd function cacheSolve calls functions stored in another 
## matrix output  from  makeCacheMatrix . If the inverse is already  
## know , then cacheSolve retrieves the inverse from the cache.  
## It calculates the inverse of the data and sets the inverse 
## in the cache via another function if the data found was new


cacheSolve <- function(x, ...) {
         z<-x$getmatrix()
         if(!is.null(z)){
                message("finding cached data")
                return(z)
        }
         matrix<-x$get()
         z<-solve(matrix, ...)
         x$setmatrix(z)
         z
 }
        ## Return a matrix that is the inverse of 'x'

dan <- matrix(data = c(4,2,7,6), nrow = 2, ncol = 2)
dan2 <- makeCacheMatrix(dan)
cacheSolve(dan2)
## research used, Google, help files, phone a friend assorted referance books
