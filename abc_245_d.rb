# ABC245 D
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)
  C = gets.split.map(&:to_i)

  (M+1).times do |i|
    x = 0
    (1..i).each do |k|
      if 0 <= N - k
        x += A[N-k] * B[M-(i-k)]
      else
        break
      end
    end
    B[M-i] = (C[M+N-i] - x) / A[N]
  end
  puts B.join(" ")
end