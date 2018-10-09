m, n, pen = gets.split(' ').map(&:to_i)
usedPencil = pen
ret = usedPencil

while true do
	if usedPencil >= m
		numRecycle = usedPencil / m

		usedPencil = usedPencil - numRecycle * m
		usedPencil = usedPencil + numRecycle * n
		ret = ret + numRecycle * n
	else break
	end
end

p ret