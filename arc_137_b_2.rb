# ARC137 B_2
if __FILE__ == $0
  N = gets.to_i
  A = [0] + gets.split.map(&:to_i)

  count_1 = A.count(1)
  a_conv  = Array.new(N+1, 0)
  (1..N).each do |i|
    S[i] = S[i-1] + a_conv[i]
  end
end