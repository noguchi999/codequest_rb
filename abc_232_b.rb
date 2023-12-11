# ABC232 B
def convert(s, k)
  converted = ""
  s.each_char do |c|
    code = s.ord
    converted += ((code + k - 97)%26 +97).chr
  end
  converted
end

if __FILE__ == $0
  S = gets.chomp
  T = gets.chomp

  25.times do |k|
    if convert(S, k) == T
      puts "Yes"
      exit
    end
  end

  puts "No"
end
