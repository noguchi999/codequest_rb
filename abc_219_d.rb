# DP4 ABC219 D Dif:1085
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  X, Y = gets.split.map(&:to_i)

  inf = 10**15
  dp = Array.new(N+1).map{Array.new(X+1).map{[inf]*(Y+1)}}
  dp[0][0][0] = 0

  (1..N).each do |i|
    a, b = gets.split.map(&:to_i)
    (X+1).times do |x|
      (Y+1).times do |y|
        dp[i][x][y] = [dp[i][x][y], dp[i-1][x][y]].min
        x_plus = [x+a, X].min
        y_plus = [y+b, Y].min
        dp[i][x_plus][y_plus] = [dp[i][x_plus][y_plus], dp[i-1][x][y]+1].min
      end
    end
  end

  ans = dp[N][X][Y]
  if ans == inf
    puts -1
  else
    puts ans
  end
end