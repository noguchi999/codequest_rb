# マンハッタン距離

if __FILE__ == $0
  N = gets.to_i

  point = []
  N.times do |i|
    x, y = gets.split.map(&:to_i)
    point.push [x, y]
  end

  pointX_conv = []
  pointY_conv = []

  point.each do |x, y|
    pointX_conv.push(x+y)
    pointY_conv.push(x-y)
  end

  Xdist_max = (pointX_conv.max - pointX_conv.min).abs
  Ydist_max = (pointY_conv.max - pointY_conv.min).abs

  puts [Xdist_max, Ydist_max].max
end