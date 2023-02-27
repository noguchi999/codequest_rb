# ABC241 B
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)
  B = gets.split.map(&:to_i)

  M.times do |i|
    if B[i] in A
      a.delete(B[i])
    else
      puts "No"
      exit
    end
  end

  puts "Yes"
end