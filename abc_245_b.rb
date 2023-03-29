# ABC245 B
if __FILE__ == $0
  N = gets.chomp.to_i
  A = gets.chomp.split.map(&:to_i)

  2001.times do |x|
    if A.include?(x)
      puts x
      exit
    end
  end
end