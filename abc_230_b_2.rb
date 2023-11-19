# ABC230 B-2
if __FILE__ == $0
  S = gets.chomp

  if S.include?("oxx"*(10**5))
    puts "Yes"
  else
    puts "No"
  end
end
