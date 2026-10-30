# a script to estimate the value of pi using the Monte Carlo calculation

set.seed(0.537916728589)
# I set the seed before either runif call, and the order is the
# point: both vectors draw from the same stream in this order, so I
# get the same points on every run and can compare plots. If I moved
# this line below the draws, it would do nothing for me.

# random vectors of length 100k
x=runif(100000)
y=runif(100000)

# radius
z=sqrt(x^2+y^2)

# count the number of points inside the quarter-circle
which(z<1)
# I multiply the inside share by four because of the shapes, not by
# habit. My points fill a unit square, the z <= 1 points fill a
# quarter circle inside it, and a quarter circle has area pi over
# four, so the share times four estimates pi.
length(which(z<=1))*4/length(z)

# make some plots
plot(x[which(z<=1)],y[which(z<=1)],xlab="X",ylab="Y",main="Monte Carlo sim")
# I add the outside points second with points() because that layers
# them onto the plot I just made. A second plot() call here would
# throw the first set away and start over.
points(x[which(z>1)],y[which(z>1)],col='yellow')
