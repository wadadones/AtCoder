b = gets.split(' ')


trans = {}

for i in 0...10
	trans[b[i]] = i
end

n = gets.to_i
a = n.times.map do
	gets.chomp
end

a.sort_by! do |i|
	i.split('').map{|c|trans[c]}.join.to_i
end

for i in a
	print(i+"\n")
end