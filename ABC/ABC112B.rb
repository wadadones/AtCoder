N, T = gets.split.map(&:to_i)
costMin = 1001
N.times do |i|
	c,t = gets.split.map(&:to_i)
	next if t > T
	costMin = [costMin, c].min
end

if costMin != 1001
	print("#{costMin}\n")
else
	print("TLE\n")
end