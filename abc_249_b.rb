# ABC249 B
if __FILE__ == $0
  S = gets.chomp

  is_upper_case = false
  is_lower_case = false

  S.each_char do |c|
    if c == c.upcase
      is_upper_case = true
    else
      is_lower_case = true
    end
  end

  unless is_lower_case && is_upper_case
    puts "No"
    exit
  end

  n = S.length
  n.times do |i|
    if k in (i+1..n)
      if S[i] == S[k]
        puts "No"
        exit
      end
    end
  end

  puts "Yes"
end