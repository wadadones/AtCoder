n = gets.to_i
a = gets.split(' ').map(&:to_i)

b = []
m = []
for i in 0...a.length
	for j in i...a.length
		b = a[i..j]
		#p b.sort
		#p b.sort[b.length/2]
		m.push(b.sort[b.length/2])
	end
end

p m.sort[m.length/2]