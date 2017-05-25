## Put comments here that give an overall description of what your
## functions do

#The first function, makeCacheMatrix creates a special "vector", which is really a list containing a function to

# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse
## Write a short comment describing this function]

#makeCacheMatrix takes a matrix and solves the inverse of the matrix
#the function then caches the value in 'm'

makeCacheMatrix <- function(x = matrix()){
   
  m <- NULL
  set <- function(y) {
          #the '<<-' allows values to be assigned to objects in a different enviornment
        x <<- y
        m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m<<- solve
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



## Write a short comment describing this function
#cacheSolve first checks to see if these is an inversed matrix in the cache
#and if there is a matrix in the cache it will print "getting cached matrix"
#but if there isn't it will solve for the inverse

cacheSolve <- function(x, ...){
  m <- x$getinverse
  if(!is.null(m)){
      message("getting cached data.")
      return(m)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(m)
  m
   
}
