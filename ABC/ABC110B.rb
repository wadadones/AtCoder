#https://abc110.contest.atcoder.jp/tasks/abc110_b

N,M,X,Y = gets.split.map(&:to_i)

x = gets.split.map(&:to_i)
y = gets.split.map(&:to_i)

borderX = X
borderY = Y

x.length.times do |i|
	borderX = [borderX,x[i]].max
end

y.length.times do |i|
	borderY = [borderY,y[i]].min
end

if borderX < borderY
	print("No War\n")
else
	print("War\n")
end