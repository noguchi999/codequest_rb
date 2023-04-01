# ABC246 B
if __FILE__ == $0
  A, B = gets.split.map(&:to_i)

  x = A / Math.sqrt(A**2 + B**2)
  y = B / Math.sqrt(A**2 + B**2)

  puts "#{x} #{y}"
end