# ABC230 B
if __FILE__ == $0
  S = gets.chomp
  N = S.length
  T = "oxx" * (10**5)
  (T.length - N).times do |i|
    if T[i..i+N] == S
      puts "Yes"
      exit
    end
  end
  puts "No"
end
