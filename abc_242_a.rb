# ABC242 A
if __FILE__ == $0
  A, B, C, X = gets.split.map(&:to_i)
  if X <= A
    puts 1
  elsif A < X <= B
    puts C / (B - A)
  else
    puts 0
  end
end