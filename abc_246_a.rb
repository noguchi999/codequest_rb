# 図形 ABC246 A Dif:28
if __FILE__ == $0
  x1, y1 = gets.split.map(&:to_i)
  x2, y2 = gets.split.map(&:to_i)
  x3, y3 = gets.split.map(&:to_i)

  x4 = 0
  if x1 == x2
    x4 = x3
  elsif x2 == x3
    x4 = x1
  elsif x3 == x1
    x4 = x2
  end

  y4 = 0
  if y1 == y2
    y4 = y3
  elsif y2 == y3
    y4 = y1
  elsif y3 == y1
    y4 = y2
  end

  puts x4, y4
end