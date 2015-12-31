# Implement your procedural solution here!
$fibArr = Array.new
$evenFib = 1
$started = false
$startNum = 0

def even_fibonacci_sum(num)
	$startNum = num if $started == false
	$started = true
	return num if num <= 1
	exists = false
	$fibArr.each{|x|
		exists = true if x == $evenFib
	}
	if $evenFib % 2 == 0 && exists == false && $evenFib < $startNum
		$fibArr << $evenFib
	end
	$evenFib = even_fibonacci_sum(num - 1) + even_fibonacci_sum(num - 2)
end


even_fibonacci_sum(10)
sum = 0
$fibArr.each{|y|
	sum += y
}
puts sum
