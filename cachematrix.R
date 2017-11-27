## The program is to cache the inverse of a matrix and retrieve the inverse from the cache. ##

## cache the inverse of a matrix ##
makeCacheMatrix <- function(x = matrix()) 
{ 
        mi <- NULL;

	set <- function (y)
	{
		x <<- y;
		mi <<- NULL;
	}
	
	get <- function() 
	{ 
		x ;
	};

	setinverse <- function(inverse) 
	{ 
		mi <<- inverse;
	};

	getinverse <- function() 
	{ 
		mi; 
	};
} 

## retrieve cached inverse of a matrix ## 
cacheSolve <- function(x, ...) 
{ 
	## return a matrix that is the inverse of 'x' 
	mi <- x$getinverse();

	if (!is.null(mi))
	{
		message("getting cached data");
		return(mi);
	}

	data <- x$get();
	mi <- solve(x, ...);
	x$setinverse(mi);
	mi;
} 
