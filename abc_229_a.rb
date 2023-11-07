# ABC229 A
if __FILE__ == $0
  S1 = gets.chomp
  S2 = gets.chomp

  if S1 == "#." && S2 == ".#"
    puts "No"
  elsif S1 == ".#" && S2 == "#."
    puts "No"
  else
    puts "Yes"
  end
end
