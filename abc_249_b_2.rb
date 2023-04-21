# ABC249 B
if __FILE__ == $0
  S = gets.chomp
  ans = "Yes"

  ans = "No" if S.upcase == S || S.downcase == S
  ans = "No" if S.split("").uniq.length == S.split("").length

  puts ans
end