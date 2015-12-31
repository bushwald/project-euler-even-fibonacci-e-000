def fib(idx)
	return idx if idx < 2
	fib(idx-1) + fib(idx-2)
end

def even_fibonacci_sum(num)
	sumArr = Array.new
	i = 0
	sum = 0
	while(sum < num)
		fib = fib(i)
		exists = false
		if fib % 2 == 0
			sumArr.each{|x|
				exists = true if fib == x
			}
			if exists == false && 
				sumArr << fib
				return sum if fib >= num
				sum += fib
			end
		end
		i += 1
	end
	return sum
end
