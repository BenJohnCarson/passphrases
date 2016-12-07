def play_pass(str, n)
	string = letter_shift(str, n)
	string = nine_comp(string)
end

def letter_shift(str, n)
	letters = ("a".."z").to_a

	str.chars.map do |char|
		letters.include?(char.downcase) ? letters[(letters.index(char) + n) - 26] : char
	end.join
end

def nine_comp(str)
	numbers = ("0".."9").to_a

	str.chars.map { |char| numbers.include?(char) ? (9 - char.to_i) : char}.join
end

puts play_pass("hel5loz", 2)