def dfs(y, map)
	for i in 0...8
		print(map[i]+"\n")
	end
	print("\n")
	#8個置けたらtrueを返す
	return true if y == 8

	#すでに置かれているところがないか探す
	target = -1
	for x in 0...8
		
		if map[y][x].chomp=="Q"
			#2箇所以上置かれていたらfalse
			return false if target != 1
			target = x
			print("Really OK?\n")
		end
	end

	#もし絶対に置かないといけない場所があれば
	if target != -1
		#コマを置けるならば置いてから探索する
		
		if isPuttable(y,target,map)
			
			return true if dfs(y+1, map)
		end
	
	#なければ全通り試す
	else
		for x in 0...8
			if isPuttable(y,x,map)
				
				map[y][x] = "Q"
				print("(#{y},#{x})\n")
				return true if dfs(y+1, map)
				map[y][x] = "."
			end
		end
	end

	return false
end

def ok(y,x)
	return y>=0 && x>=0 && y<8 && x<8
end 

def isPuttable(y,x,map)
	print("now:(#{y},#{x})\n")
	for vy in -1..1
		for vx in -1..1
			print("vy:#{vy} vx:#{vx}\n")

			next if vy==0 && vx==0
			ty=y
			tx=x
			while true do
				ty = ty + vy
				tx = tx + vx
				print("check (#{ty},#{tx})\n")
				break if !ok(ty,tx)
				print("#{map[ty][tx]}\n")
				print(map[ty][tx]equal?"Q"+"\n")
				false if map[ty][tx].chomp=="Q"
			end

		end
	end
	print("OK3?\n")
	return true
end

map = Array.new(8)

for i in 0...8
	map[i] = gets.chomp
end

if dfs(0, map)
	for i in 0...8
		print(map[i]+"\n")	
	end
else print("No Answer\n")
end



#for i in 0...8
#	print(map[i]+"\n")
#end