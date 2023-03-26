# ABC244 E
if __FILE__ == $0
  mod = 998244353
  N, M, K, S, T, X = gets.chomp.split.map(&:to_i)
  dp = Array.new(K + 1) { Array.new(N + 1, [0]*2) }
  edge = []
  M.times do |i|
    U, V = gets.chomp.split.map(&:to_i)
    edge << [U, V]
  end

  dp[0][S][0] = 0
  (1..K).each do |i|
    edge.each do |u, v|
      if v == X
        dp[i][v][0] += dp[i-1][u][1]
        dp[i][v][1] += dp[i-1][u][0]
      else
        dp[i][v][0] += dp[i-1][u][0]
        dp[i][v][1] += dp[i-1][u][1]
      end
      dp[i][v][0] %= mod
      dp[i][v][1] %= mod

      if u == X
        dp[i][u][0] += dp[i-1][v][1]
        dp[i][u][1] += dp[i-1][v][0]
      else
        dp[i][u][0] += dp[i-1][v][0]
        dp[i][u][1] += dp[i-1][v][1]
      end

      dp[i][u][0] %= mod
      dp[i][u][1] %= mod
    end
  end

  puts dp[K][T][0]
end