# ARC131 C
if __FILE__ == $0
  N = gets.to_i
  A = gets.split.map(&:to_i)

  axor = 0
  A.times do |x|
    axor ^= x
  end

  if N%2 == 1
    puts "win"
  else
    if axor in A
      puts "win"
    else
      puts "lose"
    end
  end
end