class String

  def capitalized?
    chars.first == chars.first.upcase
  end

end

def translate(s)
	first = s[0]
	second = s[1]
	third = s[2]
	two_word_prefix = (first + second)
	three_word_prefix = (first + second + third)

	# One Vowel
	if s.start_with?(/[aeiou]/) == true && s.split.length == 1
	return "#{s + "ay"}" 

	# One Consonnants 
	elsif s.start_with?(/[^aeiou]/) == true && s.start_with?(/.[aeiou]/) == true && s.split.length == 1 && s.start_with?(/qu/) == false
	s.delete_prefix!(first)	
	return "#{s + first + "ay"}" 

	# Two Consonnants
	elsif s.start_with?(/[^aeiou][^aeiou]/) == true && s.start_with?(/..[aeiou]/) == true && s.split.length == 1 && s.start_with?(/[^aeiou]qu/) == false
	s.delete_prefix!(two_word_prefix)
	return "#{s + two_word_prefix + "ay"}" 

	# Two Words
	elsif s.split.length == 2
	return s.split.map!.with_index { |el, i| if i == 0; el + "ay" else; el.delete_prefix(el[0]) + el[0] + "ay" end}.join(" ")	

	# Three Consonnants
	elsif s.start_with?(/[^aeiou][^aeiou][^aeiou]/) == true && s.split.length == 1
	s.delete_prefix!(three_word_prefix)
	return "#{s + three_word_prefix + "ay"}" 

	# Count qu as a single phoneme
	elsif s.start_with?(/qu/) == true && s.split.length == 1
	s.delete_prefix!(two_word_prefix)
	return "#{s + two_word_prefix + "ay"}" 	

	# Qu as a consonant even when it's preceded by a consonant
	elsif s.start_with?(/[^aeiou]qu/) == true && s.split.length == 1
	s.delete_prefix!(three_word_prefix)
	return "#{s + three_word_prefix + "ay"}" 	

	# Translates many words
	elsif s.split.length > 2 && s.capitalized? == false
	return s.split.map!.with_index { |el, i| if i != (s.split.length - 1); el.delete_prefix(el[0..1]) + el[0..1] + "ay" else; el.delete_prefix(el[0]) + el[0] + "ay" end}.join(" ")

	# Bonus def
	elsif s.split.length > 1 && s.capitalized? == true
	return s.split.map! { |el| el.delete_prefix(el[0]).capitalize + el[0].downcase + "ay"}.join(" ")	
	end
end
puts translate("The Beautiful Coworking Space") #Hetay Eautifulbay Oworkingcay Pacesay