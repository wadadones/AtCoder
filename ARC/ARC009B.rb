b = gets.split(' ')
n = gets.to_i
j = 0

a = Array.new(n, Array.new(10))
c = Array.new(n, Array.new(10))
n.times do |i|
	a[i] = gets
	c[i] = a[i]
	p c[i]
end



n.times do |i|
	j = 0
	while true do
		break if j == c[i].length-1
		print(c[i][j]+"→")
		c[i][j] = b.index((i+1).to_s).to_s
		print (c[i][j]+" ")
		j = j + 1
	end
	print("\n")
end

n.times do |i|

	print(a[i].chomp+" "+c[i].chomp+"\n")
end