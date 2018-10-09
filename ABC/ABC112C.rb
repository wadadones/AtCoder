#10/9
#https://abc112.contest.atcoder.jp/tasks/abc112_c

#絶対値の場合分け
=begin
解法
・0<=Cx,Cy<=100の場合についてn個の式に代入
・100*100*nの計算量	



教訓
・n個の方程式に当てはまる共通解
	・式でfor回して値が全て一致したらおけ
=end


n = gets.to_i
xyh = []

n.times do |i|
	xyh.push(gets.split.map(&:to_i))
end

xyh.delete_if{|a|a[2] == 0}
if xyh.size == 1
	puts "#{xyh[0][0]} #{xyh[0][1]} #{xyh[0][2]}"
else

	h = Array.new(xyh.length)

	for i in 0..100
		for j in  0..100
			for k in 0..(xyh.length-1)
				h[k] = (xyh[k][0]-i).abs + (xyh[k][1]-j) + xyh[k][2]
			end
			p h
			if h.uniq.length == 1
				print("#{i} #{j} #{h[0]}\n")
			end
		end
	end
end
