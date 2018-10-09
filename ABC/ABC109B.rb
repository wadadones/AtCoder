#https://abc109.contest.atcoder.jp/tasks/abc109_b

n = gets.to_i
s = gets.chomp

count = Hash.new(0)
count[sprev] += 1
(n-1).times do |i|
	snext = gets.chomp
	count[snext] += 1
	if count.values.include?(2)
		print("No\n")
		exit
	end
	if sprev[-1] == snext[0]
		sprev = snext
		next
	else
		print("No\n")
		exit
	end

end

print("Yes\n")

=begin
N = gets.to_i
s = []

count = Hash.new(0)

N.times do |i|
	tmp = gets.chomp
	count[tmp] += 1
	s.push(tmp)
end

def check(n, ary)
	(n-1).times do |i|
		if ary[i][-1] != ary[i+1][0]
			return false
		end
	end
	return true
end


if check(N, s) && count.values.max > 1
	print("Yes\n")
else
	print("No\n")
end
=end
