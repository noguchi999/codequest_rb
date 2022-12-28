# DP1 ABC211 C Dif:559
if __FILE__ == $0
  s = gets.split.map(&:to_i)
  N = s.size

  s = "?#{s}"
  t = "?chokudai"
  mod = 10**9+7

  dp = Array.new(N+1).map{[0]*9}
  (N+1).times do |i|
    dp[i][0] = 1
  end

  (1..N).each do |i|
    (1..8).each do |k|
      if s[i] == t[k]
        dp[i][k] = dp[i-1][k] + dp[i-1][k-1]
      else
        dp[i][k] = dp[i-1][k]
      end
    end
    dp[i][k] %= mod
  end

  puts dp[N][8]
end