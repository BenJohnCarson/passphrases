def play_pass(str, n)
	letter_shift(str, n)
end

def letter_shift(str, n)
	letters = ("a".."z").to_a

	str.chars.map do |char|
		letters.include?(char.downcase) ? letters[(letters.index(char) + n) - 26] : char
	end.join
end

puts play_pass("hel5loz", 2)