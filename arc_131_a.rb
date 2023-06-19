# ARC131 A
if __FILE__ == $0
  a = gets.chomp.to_i
  b = gets.chomp.to_i

  b = (b / 2.0 * 10).to_i

  puts "#{b}0#{a}"
end