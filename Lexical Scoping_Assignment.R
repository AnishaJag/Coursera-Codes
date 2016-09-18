# This is functiond helps in creating the inverse matrix#
#input a matrix, assign m as NULL, take the inverse of the matrix and assign it to m##
##Create a list containing the the setiv,getinv,set and get##
makematrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv= setinv,
       getinv = getinv)
}

##Here we need to check if thematrix has been already inverted then give text "getting cached data" and display the inverse matrix without executing else execute the inverse matrix funxtion#
# first we get if the getinx of makematrix has some value or not if yes we diplay the message "getting cached data" and diisplay the result#
#Else we inverse it and display the result#
cacheinv <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- matrix1$get()
  m <- solve(data)
  x$setinv(m)
  m
}

