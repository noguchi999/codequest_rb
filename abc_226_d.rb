# ABC226 D
if __FILE__ == $0
  N = gets.to_i

  _p = []
  magic = []
  N.times do |i|
    x, y = gets.split.map(&:to_i)
    _p << [x, y]
  end

  N.times do |s|
    N.times do |e|
      next if s == e
      xs, ys = _p[s][0], _p[s][1]
      xe, ye = _p[e][0], _p[e][1]
    end
  end
end