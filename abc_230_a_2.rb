# ABC230 A-2
if __FILE__ == $0
  N = gets.to_i
  if N < 42
    puts "AGC#{N.to_s.rjust(3, "0")}"
  else
    puts "AGC#{(N+1).to_s.rjust(3, "0")}"
  end
end
