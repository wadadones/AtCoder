#https://abc108.contest.atcoder.jp/tasks/arc102_a

#愚直にやるとn^3になるよ
#3っつことなる数で条件満たしたら+6
#同じの2つ合って条件満たしたら+3
#全部同じなら+1



N, K = gets.split.map(&:to_i)
count = 0



for i in 1..N
	if K.odd?
		count += 1 if i%K == 0
	else
		count += 1 if i%K == 0
		count += 1 if i%K == K/2
	end
end

print((count**3).to_s+"\n")





=begin
def check(a,b,c,k)
	return false if (a+b)%k != 0
	return false if (a+c)%k != 0
	return false if (b+c)%k != 0
	return true
end


for i in 1..N
	for j in i..N
		for k in j..N
			print("(#{i},#{j},#{k}) ")
			if !check(i,j,k,K)
				print("next\n")
				next
			end
			if [i,j,k].uniq.length == 3
				count += 6 * (((N-k)/K)+1)
			elsif [i,j,k].uniq.length == 2
				if i == j
					count += 3 * (((N-k)/K)+1) 
				else
					count += 6 * (((N-k)/K)+1) - 3
				end
			else
				count += 3 * (((N-k)/K)+1) - 2
			end
			print("#{count} ")
			print("break\n")
			break
		end
	end
end
=end
