# DP3 ABC204 D Dif:832
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  T = [0] + gets.split.map(&:to_i)
  t_sum = T.sum

  dp = Array.new(N+1).map{[false]*(t_sum+1)}
  dp[0][0] = true
  (1..N).each do |i|
    (t_sum+1).times do |k|
      if dp[i-1][k] == true
        dp[i][k] = true
      end
      if 0 <= k - T[i] && dp[i-1][k-T[i]] == true
        dp[i][k] = true
      end
    end
  end

  ans = 10**15
  (t_sum+1).times do |k|
    if dp[N][k] == true
      ans = [ans, [k, t_sum-k].max].min
    end
  end

  puts ans
end