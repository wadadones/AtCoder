N,X = gets.split.map(&:to_i)
x = (gets.split.map(&:to_i)+[X]).sort
ans = 10000000001
for i in 1...x.length
	ans = [ans, x[i]-x[i-1]].min
end

print(ans.to_s+"\n")