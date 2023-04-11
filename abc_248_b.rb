# ABC248 B
if __FILE__ == $0
  A, B, K = gets.chomp.split.map(&:to_i)

  if B <= A
    puts 0
    exit
  end

  (1..100).times do |i|
    if B <= A*K
      puts i
      exit
    end
  end
end