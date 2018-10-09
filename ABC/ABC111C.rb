n = gets.to_i
v = gets.split.map(&:to_i)
e =[]
o =[]

ecount, ocount = Hash.new(0), Hash.new(0)

((v.length)/2).times do |i|
	e.push(v[i*2])
	o.push(v[i*2+1])
end


e.length.times do |i|
	ecount[e[i]] += 1
	ocount[o[i]] += 1 
end

ecount = ecount.sort_by{|a,b| b}.reverse
ocount = ocount.sort_by{|a,b| b}.reverse

if 

