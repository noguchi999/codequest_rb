# ABC245 C
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  A = [0] + gets.split.map(&:to_i)
  B = [0] + gets.split.map(&:to_i)

  dp = Array.new(2) { Array.new(N+1, false) }
  dp[0][1] = true
  dp[1][1] = true
end