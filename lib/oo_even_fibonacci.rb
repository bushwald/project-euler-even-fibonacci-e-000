# Implement your object-oriented solution here!
class EvenFibonacci
	def initialize(num)
		@num = num
		@sum = 0
		@idx = 0
		@sumArr = Array.new
		@exists = false
	end

	def sum
		while(@sum < @num)
			fib = fib(@idx)
			if fib % 2 == 0
				@sumArr.each{|x|
					@exists = true if fib == x
				}
				if @exists == false && 
					@sumArr << fib
					return @sum if fib >= @num
					@sum += fib
				end
			end
			@idx += 1
		end
		return @sum
	end

	private
	def fib(num)
		return num if num < 2
		fib(num-1) + fib(num-2)
	end
end