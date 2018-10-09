h,w = gets.split(' ').map(&:to_i)

map,col,row = [],[],[]

h.times do |i|
	map[i] = gets.chomp
end

h.times do |i|
	w.times do |j|
		if map[i][j] == '#'
			row[i] = true
			col[j] = true
		end
	end
end

h.times do |i|
	if row[i]
		w.times do |j|
			if col[j]
				print map[i][j]
			end
		end
		print "\n"
	end
end