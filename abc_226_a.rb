# ABC226 A
if __FILE__ == $0
  _x = gets.to_s

  minor_1 = _x[-3]
  _x = _x.to_f
  _int = _x.to_i
  if _int.between?(0, 4)
    puts "#{_int}"
  else
    puts "#{_int+1}"
  end
end