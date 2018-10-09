class ABC103C
	def self.calc
		n = gets.to_i
		sum = 0
		x = gets.split(' ').map(&:to_i)

		if n != x.size
		else
			x.size.times do |i|
				sum += x[i] - 1
			end
			p sum
		end
	end
end

ABC103C.calc