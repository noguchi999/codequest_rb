# ABC249 A
if __FILE__ == $0
  A, B, C, D, E, F, G = gets.chomp.split.map(&:to_i)

  _time = X
  taka = 0
  while 0 < _time
    if A <= _time
      taka += A * B
      _time -= A + C
    else
      taka += _time * B
      _time = 0
    end
  end

  _time = X
  aoki = 0
  while 0 < _time
    if D <= _time
      aoki += D * E
      _time -= D + F
    else
      aoki += _time * E
      _time = 0
    end
  end

  if aoki < taka
    puts "Takahashi"
  elsif aoki > taka
    puts "Aoki"
  else
    puts "Draw"
  end
end