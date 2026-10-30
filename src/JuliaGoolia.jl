println("Im Julia")

println("This is Fibonacci")
function fib(n)
    x,y = (0,1)
    # I swap x and y in a single tuple assignment because the right
    # hand side is worked out before either name changes. If I set x
    # first and then built the new y from it, I would feed the new x
    # into the same step and break the sequence.
    for i = 1:n x,y = (y, x+y) end
    # After n swaps I return x, so fib(0) gives me 0 and fib(1) gives
    # me 1.
    x
end

let x = 0
    # I run this up to 99 to watch the sequence grow, but I know the
    # values stop being true near the end: plain integers here are
    # 64 bit and wrap instead of growing past their limit, which
    # fib(93) crosses, so the last few values print negative even
    # though nothing in the loop has failed.
    while x < 100
        println(fib(x))
        x += 1
    end
end
