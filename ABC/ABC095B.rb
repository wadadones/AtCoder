N, X = gets.split(' ').map(&:to_i)
tmp = []
N.times do |i|
	tmp[i] = gets.to_i
end
sum = tmp.inject(:+)
min = tmp.min

p (X-sum)/min + N