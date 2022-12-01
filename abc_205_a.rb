# 入力と出力 ABC205 A Dif:6
if __FILE__ == $0
  A, B = gets.split.map(&:to_i)

  puts A*(1/1000)*B
end