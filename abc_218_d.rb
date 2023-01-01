# 連想配列2 ABC218 D Dif:715
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  points = []
  _p = h = Hash.new(0)

  N.times do |i|
    x, y = gets.split.map(&:to_i)
    points.puash [x, y]
    _p[[x,y]] = 1
  end

  ans = 0
  N.times do |p1|
    (p1+1..N-1).each do |p2|
      p1_x, p1_y = points[p1]
      p2_x, p2_y = points[p2]

      next if p1_x == p2_x || p1_y == p2_y
      ans += 1 if _p[[p1_x, p2_y] && _p[[p2_x, p1_y] == 1
    end
  end

  puts ans /= 2
end