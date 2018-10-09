n, k = gets.split(' ').map(&:to_i)
used = Array.new(n, false)


def dfs(pos, used, nokori)
	if pos == n
		return 1 if nokori == 0
		return 0
	end

	ret = 0
	used[pos]=true
	for i in 0...n
		next if used[pos]==true || i==pos
		ret = ret + dfs(i, used, nokori-1)
	end
	used[pos]=false
	return ret
end


print(dfs(n,used,n))

#誰宛に書いたのか全列挙
#それぞれに対していくつ間違ってるか列挙