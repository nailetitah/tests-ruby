def who_is_bigger(a,b,c)
	if a == nil || b == nil || c == nil
		return "nil detected"
	elsif a >= b && a >= c
		return "a is bigger"
	elsif b >= a && b >= c
		return "b is bigger"
	elsif c >= b && c >= a
		return "c is bigger"
	end
end


def reverse_upcase_noLTA(s)
	return s.reverse.upcase.delete "T|L|A" 
end


def array_42(a)
	a.include?(42)
end


def magic_array(ary)
	ary.flatten.map! { |el| el * 2}.sort.uniq.delete_if { |x| x % 3 == 0}
end

