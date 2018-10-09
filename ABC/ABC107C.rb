n, k = gets.split(' ').map(&:to_i)

x = gets.split(' ').map(&:to_i)

ans = []

for i in 0...(n - k + 1)
	ans.push(x[i].abs + (x[i + k - 1]-x[i]).abs)
	ans.push(x[i + k - 1].abs + (x[i]-x[i + k - 1]).abs)
end

p ans.min