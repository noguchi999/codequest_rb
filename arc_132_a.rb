# ARC132 A
if __FILE__ == $0
  n = gets.to_i
  R = [0] + gets.split.map(&:to_i)
  C = [0] + gets.split.map(&:to_i)
  q = gets.to_i

  ans = ""
  q.times.each do |i|
    r, c = gets.split.map(&:to_i)
    if R[r] + C[c] <= n
      ans += "."
    else
      ans += "#"
    end
  end

  puts ans
end