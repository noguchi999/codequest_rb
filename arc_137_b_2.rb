# ARC137 B_2
if __FILE__ == $0
  N = gets.to_i
  A = [0] + gets.split.map(&:to_i)

  count_1 = A.count(1)
  a_conv  = Array.new(N+1, 0)
  (1..N).each do |i|
    S[i] = S[i-1] + a_conv[i]
  end

  score_min = count_1
  score_max = count_1
  s_min = 10**10
  s_max = 10**10
  (1..N).each do |r|
    s_min = [S[r-1], s_min].min
    s_max = [S[r-1], s_max].max
    score_min = [count_1 + S[r] - s_max, score_min].min
    score_max = [count_1 + S[r] - s_min, score_max].max
  end

  puts score_max - score_min + 1
end