# ABC233 A
if __FILE__ == $0
  X, Y = gets.split.map(&:to_i)
  if Y <= X
    puts 0
  else
    if (Y-X)%10 == 0
      puts (Y-X)/10
    else
      puts (Y-X)/10 + 1
    end
  end
end
