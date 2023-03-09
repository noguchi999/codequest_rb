# ABC242 C
if __FILE__ == $0
  mod = 998244353
  N = gets.to_i

  dp = Array.new(N+1).map{[0]*10}
  [1..9].each do |i|
    dp[1][i] = 1
  end

  (2..N).each do |d|
    (1..9).each do |i|
      if i == 1
        dp[d][i] = dp[d-1][i] + dp[d-1][i+1]
      elsif 2 <= i <= 8
        dp[d][i] = dp[d-1][i-1] + dp[d-1][i] + dp[d-1][i+1]
      else
        dp[d][i] = dp[d-1][i-1] + dp[d-1][i+1]
      end
      dp[d][i] %= mod
    end
  end

  ans = dp[N].inject(:+) % mod
  puts ans
end