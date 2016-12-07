def play_pass(str, n)
	letters = ("a".."z").to_a

	string = letter_shift(str, n, letters)
	string = nine_comp(string)
	string = change_case(string, letters)
	string.reverse
end

def letter_shift(str, n, letters)
	str.chars.map do |char|
		letters.include?(char.downcase) ? letters[(letters.index(char.downcase) + n) - 26] : char
	end.join
end

def nine_comp(str)
	numbers = ("0".."9").to_a

	str.chars.map { |char| numbers.include?(char) ? (9 - char.to_i) : char}.join
end

def change_case(str, letters)
	str.chars.map.with_index do |char, i|
		letters.include?(char) ? (i % 2 == 0 ? char.upcase : char) : char
	end.join
end

puts play_pass("hEl5 loz", 2)