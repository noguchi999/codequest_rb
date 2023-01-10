# DP2 ABC248 C Dif:787
if __FILE__ == $0
  N, M, K = gets.split.map(&:to_i)

  mod = 998244353
  dp = Array.new(N+1).map{[0]*(K+1)}

  (1..M).each do |x|
    dp[1][x] = 1
  end

  (2..N).each do |i|
    (1..K).each do |x|
      (1..x-1).each do |j|
        if x - j <= M
          dp[i][x] += dp[i-1][j]
          dp[i][x] %= mod
        end
      end
    end
  end

  ans = 0
  (1..K).each do |x|
    ans += dp[N][x]
    ans %= mod
  end

  puts ans
end