
writeln("------------------")

/**
 * Fibonacci
 */


// Recursive
fib_r := method(a, if(a <= 2, 1, fib_r(a-1) + fib_r(a-2)))

writeln("fib recursive")
writeln("4 --> ", fib_r(4))
writeln("6 --> ", fib_r(6))

writeln("------------------")



// Loop
fib_l := method(n,
	a := 1
	b := 1
	c := 1
	for(i, 3, n,
		c := a + b
		a := b
		b := c
	)
	c
)

writeln("fib loop")
writeln("4 --> ", fib_l(4))
writeln("6 --> ", fib_l(6))

writeln("------------------")

/**
 * Division
 */

Number oldDiv := Number getSlot("/")

Number / := method(d, if (d == 0, 0, self oldDiv(d)))

writeln("Division")
writeln("1/5 --> ", (1/5))
writeln("10/5 --> ", (10/5))
writeln("0/5 --> ", (0/5))
writeln("5/0 --> ", (5/0))

writeln("------------------")

/**
 * Two dim sum
 */

sumMulti := method(m,
	count := 0
	if (m type == "List",
		m foreach (i, v, 
			count = count + sumMulti(v)
		),
		count = count + m
	)

	count
)

writeln("Two Dimensional List sum")
writeln("adding list(list(2,3,4),list(5,6,7)) --> ", sumMulti(list(list(2,3,4),list(5,6,7))))
writeln("------------------")


/**
 * myAverage
 */

 List myAverage := method(
 	count := 0

 	self foreach(i, v,
 		if (v type == "Number",
 			count := count + v,
 			Exception raise("oh no! not a number")
 		)
 	)

 	count / self size
 )

writeln("myAverage")
writeln("list(1,2,3,4) --> ", list(1,2,3,4) myAverage)
writeln("list(1,2,\"hola\") --> ", list(1,2,"hola") myAverage)
writeln("------------------")
