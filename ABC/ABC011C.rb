
=begin
あなたは、友人から、一人用のゲームを紹介されました。
最初に、数字 N が与えられます。1,2,3 の中から好きな数字を選び、
与えられた数字に対し、引き算を行う、という処理を行うことできます。
この処理は 100 回まで行うことが可能であり、最終的に数字を 0 にすることが目標のゲームです。
しかし、計算途中でなってはいけないNG数字が 3 つ与えられており、
この数字に一時的にでもなってしまった瞬間、このゲームは失敗となります。 NG数字が N と同じ場合も失敗となります。
NG数字が N と同じ場合について、正しい判定が行われていませんでした。リジャッジを行いました。
あなたは、このゲームが、目標達成可能なゲームとなっているか調べたいです。
目標達成可能な場合はYES、そうでない場合はNOと出力してください。	
 
input 
2
1
7
15

output
YES
=end


n = gets.to_i
NG = Array.new(n+1,false)

3.times do |i|
	a = gets.to_i
	NG[a]=true
end

dp = Array.new(n+1,1000)
dp[n]=0

n.downto(0) do |i|
	next if NG[i]
	for j in 1..3
		dp[i-j]=[dp[i]+1,dp[i-j]].min
	end
end


#n.downto(0) do |i|
#	p dp[i]
#end

if dp[0] <= 100
	print("YES\n")
else
	print("NO\n")
end
