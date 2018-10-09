#https://beta.atcoder.jp/contests/abc110/tasks/abc110_c

#交換したい文字が入ってる場合と入ってない場合で考える？

#入っていない場合
	#できる


#入っている場合
	#そーとの問題？
	#多分文字対応だけ合ってればできる
S = gets.chomp
T = gets.chomp

def placeInfo(str)
	count = Hash.new{[]}
	str.length.times do |i|
		count[str[i]] = count[str[i]].push(i)
	end
	return count.values
end

if placeInfo(S) == placeInfo(T)
	print("Yes\n")
else
	print("No\n")
end


=begin
S.length.times do |i|
	scount[S[i]] = scount[S[i]].push(i)
end

T.length.times do |i|
	tcount[T[i]] = tcount[T[i]].push(i)
end

if scount.values == tcount.values
	print("Yes\n")
else
	print("No\n")
end
=end

#scount, tcount= Hash.new{[]},Hash.new{[]}


#S.split('').map{|c| 
#	scount[c]+=1
#}

#S.split('').map{|c| 
#	scount[c]+=1
#}




#scount = S.split('').group_by{|i|i}.map{|a,b| b.length}
=begin
count = 0
S.length.times do |i|
	if i == 0
		count = 1 
	else
		if S[i]==S[i-1]
			count += 1
		else
			scount.push([S[i-1],count])
			count = 1
		end
	end
	scount.push([S[i],count]) if i == S.length - 1
end

T.length.times do |i|
	if i == 0
		count = 1 
	else
		if T[i]==T[i-1]
			count += 1
		else
			tcount.push([T[i-1],count])
			count = 1
		end
	end
	tcount.push([T[i],count]) if i == T.length - 1
end
=end
#T.split('').map{|c| tcount[c]+=1}

#p scount
#p tcount