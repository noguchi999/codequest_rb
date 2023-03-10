# ABC243 A
if __FILE__ == $0
  V, A, B, C = gets.split.map(&:to_i)
  (10**10).times do |i|
    V -= A
    if V <= 0
      puts "F"
      exit
    end
  end

  V -= B
  if V < 0
    puts "M"
    exit
  end

  V -= C
  if V < 0
    puts "T"
    exit
  end
end