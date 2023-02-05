# ABC238 A
if __FILE__ == $0
  n = gets.split.map(&:to_i)
  if 2 <= n <= 4
    puts "No"
  else
    puts "Yes"
  end
end