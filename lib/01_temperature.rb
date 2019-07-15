def ftoc(f)
	return (f.to_f - 32) * 5 / 9
end

def ctof(c)
		m = (c.to_f * 9/5).to_f
		return m + 32
end
