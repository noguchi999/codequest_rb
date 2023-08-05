# ARC137 B
if __FILE__ == $0
  N = gets.to_i
  A = [0] + gets.split.map(&:to_i)
  C = [0] * (N + 1)

  (1..N).each do |i|
    if A[i] == 1
      C[i] = C[i - 1] + 1
    else
      C[i] = C[i - 1]
    end
  end
end