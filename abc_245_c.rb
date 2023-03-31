# ABC245 C
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  A = [0] + gets.split.map(&:to_i)
  B = [0] + gets.split.map(&:to_i)

  dp = Array.new(2) { Array.new(N+1, false) }
  dp[0][1] = true
  dp[1][1] = true
  (1..N).each do |i|
    if dp[0][i]
      if (A[i] - A[i+1]).abs <= K
        dp[0][i+1] = true
      end

      if (A[i] - B[i+1]).abs <= K
        dp[1][i+1] = true
      end
    end

    if dp[1][i]
      if (B[i] - A[i+1]).abs <= K
        dp[0][i+1] = true
      end

      if (B[i] - B[i+1]).abs <= K
        dp[1][i+1] = true
      end
    end
  end

  if dp[0][N] || dp[1][N]
    puts "YES"
  else
    puts "NO"
  end
end