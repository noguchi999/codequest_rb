# 条件分岐1 ABC219 A Dif:6
if __FILE__ == $0
  X = gets.split.map(&:to_i)

  if 0 <= X < 40
    puts 40 - X
  elsif 40 <= X < 70
    puts 70 - X
  elsif 70 <= X < 90
    puts 90 - X
  else
    puts "expert"
  end
end