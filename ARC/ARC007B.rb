n, m = gets.split(' ').map(&:to_i)
disks = Array.new(n+1)
for i in 1..n do
	disks[i] = i
end

now = 0
for i in 1..m do
	disk = gets.to_i
	#print("disk:#{disk}\n")
	#p disks.index(disk)
	if disks.index(disk).nil?
		next
	end
	#print ("index:#{disks[disks.index(disk)]}\n")
	tmp = now
	now = disks[disks.index(disk)]
	disks[disks.index(disk)] = tmp
	
	#print("(#{now}, #{disk})\n")
	#for j in 1..m do
	#	print("#{disks[j]},")
	#end
	#print("\n")
end

for i in 1..n
	p disks[i]
end

