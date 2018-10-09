#https://abc108.contest.atcoder.jp/tasks/abc108_b

#回答時間 12m

x1,y1,x2,y2 = gets.split.map(&:to_i)

xv = x2 - x1
yv = y2 - y1

print("#{x2-yv} #{y2+xv} #{x2-yv-xv} #{y2+xv-yv}\n")