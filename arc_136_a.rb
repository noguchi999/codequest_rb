# ARC136 A
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  S = gets.chomp.split(//)

  (N-1).times do |i|
    if S[i] == "B" && S[i+1] == "A"
      S[i] = "A"
      S[i+1] = "B"
    elsif S[i] == "A" && S[i+1] == "B"
      S[i] = "A"
      S[i+1] = "X"
    end
  end

  ans = ""
  S.each do |s|
    if s != "X"
      ans += s
    end
  end

  puts ans
end