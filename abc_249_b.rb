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
end