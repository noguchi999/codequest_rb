# 二重ループ ABC234 B Dif:46
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  x = []
  y = []
  N.times do |i|
    xi, yi = gets.split.map(&:to_i)
    x.push xi
    y.push yi
  end

  ans = 0
  N.times do |i|
    (i+1..N-1).each do |j|
      length = Math.sqrt((x[i]-x[j])**2 + (y[i]-y[j])**2)
      ans = [ans, length].max
    end
  end

  puts ans
end