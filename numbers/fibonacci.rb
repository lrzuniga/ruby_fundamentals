def fibo_finder(n)
	x=0
	y=1

	n.times { x, y = y, x + y}

	puts x
end

def fib(n)
	seq = [0,1]
	(0..n).each do |position|
		seq << seq[position-1] + seq[position-2]
	end
	
end

fibo_finder(0)
fibo_finder(1)
fibo_finder(4)
fibo_finder(7)
fibo_finder(10)

