# 二次元配列、ソート1 ABC201 B Dif:32
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  Mountains = []
  N.times do |i|
    s, t = gets.split.map(&:to_i)
    Mountains.push [t.to_i, s]
  end

  Mountains.reverse!

  puts Mountains[1][1]
end