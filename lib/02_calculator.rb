def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(a)
	if a == []
		return 0
	else 
		return a.sum
	end
end

def multiply(a,b)
	return a * b
end

def power(a,b)
	return a ** b
end

def factorial(a)
	f = 1
	for i in 1..a do
		f *= i  
	end
	return f
end

puts factorial(0)