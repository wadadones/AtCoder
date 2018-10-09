#10/9
#https://abc112.contest.atcoder.jp/tasks/abc112_d

=begin

14/3が可能性のある最大公約数
(N/M)
・N/Mが割り切れた場合
	・N/Mが最大公約数
・割り切れない場合




解法
・最大公約数が最大を取る時、約数に等しい値がN-1個、N/M以下で最大となる値
=end

N,M =gets.split.map(&:to_i)

num = []

for i in 1..Math.sqrt(M).to_i
	if M%i == 0
		num.push(i)
		num.push(M/i)
	end
end

num = num.uniq.sort


previ = 1
for i in num
	if i > M/N
		puts "#{previ}"
		break
	end
	previ = i
end
