n =gets.to_i

if 100 <= n && n <= 111
	print("111\n")
end


for i in 1...9
	if i*111 < n && n <= (i+1)*111
		print(((i+1)*111).to_s+"\n")
	end
end