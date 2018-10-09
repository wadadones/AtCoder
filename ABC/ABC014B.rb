n, x = gets.split(' ').map(&:to_i)

a = gets.split(' ').map(&:to_i)
x=x.to_s(2).rjust(a.length, "0").reverse
p x

ans = 0
a.length.times do |i|
	ans = ans + a[i] if x[i] == "1"
end

print(ans.to_s+"\n")