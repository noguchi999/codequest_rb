# 貪欲法 ABC229 C Dif:165
if __FILE__ == $0
  N, w = gets.split.map(&:to_i)

  Cheese = []
  N.times do |i|
    a, b = gets.split.map(&:to_i)
    Cheese.push [a, b]
  end

  Cheese.reverse!

  ans = 0
  N.times do |i|
    delicious = Cheese[i][0]
    weight = Cheese[i][1]

    if weight <= w
      ans += delicious * weight
      w -= weight
    else
      ans += delicious * w
      break
    end
  end

  puts ans
end