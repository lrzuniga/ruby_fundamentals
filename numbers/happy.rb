def happy_number(n)
	visited = {}

	while n !=1
		v = n.to_s.split("").inject(0) { |sum, digit| sum += digit.to_i ** 2 }
		return false if visited.has_key? v
		visited[v] = true
		n = v
	end

	return true
end

puts happy_number(7)
puts happy_number(7)
puts happy_number(986543210)
puts happy_number(2)
puts happy_number(189)

 #assert_equal happy_number?(7), true
 #assert_equal happy_number?(986543210), true
 #assert_equal happy_number?(2), false
 #assert_equal happy_number?(189), false