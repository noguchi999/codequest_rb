# DP 2
if __FILE__ == $0
  s = gets.to_i
  mod = 10**9 + 7
  dp = [0]*(10**5)

  dp[0] = 0
  dp[1] = 0
  dp[2] = 0
  dp[3] = 1
  dp[4] = 1
  dp[5] = 1
  (6..s).each do |i|
    dp[i] = dp[3..i-3].sum + 1
    dp[i] %= mod
  end

  puts dp[s]
end