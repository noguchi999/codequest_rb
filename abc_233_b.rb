# ABC233 A
if __FILE__ == $0
  L, R = gets.chomp.split.map(&:to_i)
  S = gets

  s_center = S[L-1..R-1]
  s_center = s_center.reverse

  puts S[..L-2] + s_center + S[R..]
end
