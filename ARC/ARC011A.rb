m, n, pen = gets.split(' ').map(&:to_i)
ans = 0
left = 0
usedPen = 0
while true do
	#販売
	ans = ans + pen

	#再利用ペン集計：回収＋残り
	pen = pen + left

	#集計されたので残り0
	left = 0

	#ペンを生成できなかったら終了
	break if pen < m

	left = pen%m

	#再利用ペンからペン生成
	pen = (pen/m)*n

	#
	
end
p ans

#販売
#回収
#回収されたものから鉛筆を新たに生成。再利用されないものはあまる