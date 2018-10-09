S = gets.chomp
T = gets.chomp
i = 0

while true do
	if S[i]!=T[i] 
		if S[i] == "@"
			if !("atcoder".include?(T[i]))
				p i 
				p "You will lose"
				break
			else
				i+=1
				next
			end
		
		elsif T[i] == "@"
			if !("atcoder".include?(S[i]))
				p i
				p "You will lose"
				break
			else
				i+=1
				next
			end
		else
			p i
			p "You will lose"
			break
		end
	end
	if i > S.length - 1
		p "You can win"
		break
	end
	i += 1
end
