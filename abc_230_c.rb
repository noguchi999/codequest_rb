# ABC230 C
if __FILE__ == $0
  N, A, B = gets.chomp.split.map(&:to_i)
  P, Q, R, S = gets.chomp.split.map(&:to_i)

  k1L = [1-A, 1-B].max
  k1R = [N-A, N-B].min

  left_up_row, left_up_col = A + k1L, B + k1L
  right_down_row, right_down_col = A + k1R, B + k1R
  right_up_row, right_up_col = A + k2L, B - k2L
  left_down_row, left_down_col = A + k2R, B - k2R

  ans = Array.new(Q-P+1+1) { Array.new(S-R+1+1, ".") }
  (P..Q).each do |i|
    (R..S).each do |j|
      if i.between?(left_up_row, right_down_row) && j.between?(left_up_col, right_down_col)
        if i - left_up_row == j - left_up_col
          ans[i-P][j-R] = "#"
        end
      end

      if i.between?(right_up_row, left_down_row) && j.between?(right_up_col, left_down_col)
        if left_down_row - i == j - right_up_col
          ans[i-P][j-R] = "#"
        end
      end
    end
  end

  (1..Q-P+1).each do |i|
    puts ans[i].join
  end
end
