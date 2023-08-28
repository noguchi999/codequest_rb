# ARC138 A
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)

  _p = []
  N.times do |i|
    _p << [A[i], -i]
  end
  _p.sort!

  ans = 10**10
  index_max = -1

  _p.each do |ai, index|
    index *= -1
    if K <= index && index_max != -1
      ans = [ans, (index - index_max) * ai].min
    elsif index < K
      index_max = [index_max, index].max
    end
  end


end