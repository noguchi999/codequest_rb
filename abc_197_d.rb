# 数学 問題 3
if __FILE__ == $0
  n = gets.to_i
  x0, y0 = gets.split.map(&:to_i)
  xn2, yn2 = gets.split.map(&:to_i)

  c_x = (x0 + xn2) / 2.0
  c_y = (y0 + yn2) / 2.0

  x0 -= c_x
  y0 -= c_y

  x1 = Math.cos(2 * Math::PI / n) * x0 - Math.sin(2 * Math::PI / n) * y0
  y1 = Math.sin(2 * Math::PI / n) * x0 + Math.cos(2 * Math::PI / n) * y0

  x1 += c_x
  y1 += c_y

  puts "#{x1} #{y1}"
end