def fib(idx)
	return num if num < 2
	fib(num-1) + fib(num-2)
end

def even_fibonacci_sum(num)
	sumArr = Array.new
	i = 0
	sum = 0
	while(sum < n)
		fib = fib(i)
		exists = false
		if fib % 2 == 0
			sumArr.each{|x|
				exists = true if fib == x
			}
			if exists == false && 
				sumArr << fib
				return sum if fib >= n
				sum += fib
			end
		end
		i += 1
	end
	return sum
end