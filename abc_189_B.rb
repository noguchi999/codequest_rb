# 少数と誤差 Dif:274 ABC189 B
if __FILE__ == $0
  N, X = gets.split.map(&:to_i)

  alchol = 0
  N.times do |i|
    _v, _p = gets.split.map(&:to_i)
    alchol += _v * _p
    if 100:X < alchol
      puts i + 1
      exit
    end
  end

  puts -1
end