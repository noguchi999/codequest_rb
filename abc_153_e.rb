# 数学 問題 3
if __FILE__ == $0
  H, N = gets.split.map(&:to_i)
  dp = [10**10] * (H+1)

  dp[0] = 0
  N.times do |i|
    a, b = gets.split.map(&:to_i)
    (H+1).times do |h|
      if h+a <= H
        dp[h+a] = [dp[h+a], dp[h]+b].min
      else
        dp[H] = [dp[H], dp[h]+b].min
      end
    end
  end

  puts dp[H]
end