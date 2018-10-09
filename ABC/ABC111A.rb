s = gets.chomp

s = s.split('').map do |c|
	if c == "9"
		c = "1"
	elsif c == "1"
		c = "9"
	else
		c
	end
end.join

print(s+"\n")