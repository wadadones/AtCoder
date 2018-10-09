x = 5#gets.to_i
sum = 0

for i in 0...5 do
	sum += (i + 1)*10000
end
p sum/x

sum = 0
x.times do |i|
	sum += (i+1)*10000
end
p sum/x

sum = 0
x.times { |i|
	sum += (i+1)*10000
}
p sum/x

sum = 0

(0...5).each do |i|
	sum += (i+1)*10000
end
p sum/x