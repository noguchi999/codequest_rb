# ABC226 A_2
if __FILE__ == $0
  _int, _minor = gets.to_s.split(".")
  if _minor.to_i.between?(0, 499)
    puts _int
  else
    puts _int.to_i + 1
  end
end