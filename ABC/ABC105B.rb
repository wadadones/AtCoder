#https://abc105.contest.atcoder.jp/tasks/abc105_b

N = gets.to_i
i = 0
while i*7 <= N
	j = 0
	while i*7 + j*4 <= N
		if i*7 + j*4 == N
			print("Yes\n")
			exit
		end
		j += 1
	end
	i += 1
end

print("No\n")
