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

  min_l = 10**10
  max_l = -10**10
  min_score = 10**10
  max_score = -10**10
  (1..N).each do |r|
    l = r
    min_l = [min_l, 2*C[l - 1] - l].min
    max_l = [max_l, 2*C[l - 1] - l].max

    min_score = [min_score, C[N] + (1 + r -2*C[r]) + min_l].min
    max_score = [max_score, C[N] + (1 + r -2*C[r]) + max_l].max
  end

  min_score = [min_score, C[N]].min
  max_score = [max_score, C[N]].max

  puts max_score - min_score + 1
end