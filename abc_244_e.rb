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
end