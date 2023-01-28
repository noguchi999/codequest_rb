# ABC237 A
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  if (-2)**31 <= N < 2**31
    puts "Yes"
  else
    puts "No"
  end
end