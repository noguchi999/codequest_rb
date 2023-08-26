# ARC138 A
if __FILE__ == $0
  N = gets.to_i
  A = gets.split.map(&:to_i)

  _p = []
  N.times do |i|
    _p << [A[i], -i]
  end
  _p.sort!
end