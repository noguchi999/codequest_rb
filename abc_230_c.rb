# ABC230 C
if __FILE__ == $0
  N, A, B = gets.chomp.split.map(&:to_i)
  P, Q, R, S = gets.chomp.split.map(&:to_i)

  k1L = [1-A, 1-B].max
  k1R = [N-A, N-B].min

  left_up_row, left_up_col = A + k1L, B + k1L
  right_down_row, right_down_col = A + k1R, B + k1R
end
