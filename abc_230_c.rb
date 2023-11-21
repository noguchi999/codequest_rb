# ABC230 C
if __FILE__ == $0
  N, A, B = gets.chomp.split.map(&:to_i)
  P, Q, R, S = gets.chomp.split.map(&:to_i)

  k1L = [1-A, 1-B].max
  k1R = [N-A, N-B].min
end
