# ABC244 B
if __FILE__ == $0
  N = gets.to_i
  T = gets.chomp

  direct = "East"
  x = 0
  y = 0

  N.times do |i|
    if T[i] == "S":
      if direct == "East":
        x += 1
      elsif direct == "South":
        y -= 1
      elsif direct == "West":
        x -= 1
      elsif direct == "North":
        y += 1
      end
    else
      if direct == "East":
        direct = "South"
      elsif direct == "South":
        direct = "West"
      elsif direct == "West":
        direct = "North"
      elsif direct == "North":
        direct = "East"
      end
    end
  end

  puts "#{x} #{y}"
end