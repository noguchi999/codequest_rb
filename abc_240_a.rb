# ABC240 A
if __FILE__ == $0
  a, b = gets.split.map(&:to_i)
  if a == 1
    if b in [2, 10]
      puts "Yes"
    else
      puts "No"
    end
  else
    if b == a+1
      puts "Yes"
    else
      puts "No"
  end
end