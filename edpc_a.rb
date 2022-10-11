if __FILE__ == $0
  N = gets.to_i
  h = [0] + gets.split(" ")
  h.map! {|x| x.to_i}

  dp = [10**15]*(N+1)
  dp[1] = 0
  dp[2] = (h[2] - h[1]).abs
  (N+1).times do |i|
    if i > 2
      cost_2 = dp[i-2] + (h[i] - h[i-2]).abs
      cost_1 = dp[i-1] + (h[i] - h[i-1]).abs
      dp[i] = [cost_1, cost_2].min
    end
  end
  puts dp[N]
end