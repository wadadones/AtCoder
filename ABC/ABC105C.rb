#https://abc105.contest.atcoder.jp/tasks/abc105_c

#1011は2進数で11、-2進数で-9


#-9に-2を足す→絶対値→二進数変換

#絶対値が偶数なら
	#絶対値の2進数が答え
#絶対値が奇数なら
	#1なら1が答え
	#絶対値+2の2進数が答え
	

#0, 1, 10, 11, 100, 101, 110, 111, 1000,
#0, 1, -2, -1,   4,   5,   2,   3,   -8,
#-3 1101

#正の部 偶数か奇数か
#負の部 偶のみ

#2, 110は正[1,0], 負[1]に分けられる

N =gets.to_i

if N.abs.even?
	print(N.abs.to_s(2)+"\n")
else
	if N == 1
		print("1\n")
	else
		print((N.abs+2).to_s(2)+"\n")
	end
end