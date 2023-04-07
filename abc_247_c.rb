# ABC247 C
if __FILE__ == $0
  N = gets.to_i
  S = [1]

  (2..N).each do |i|
    S = S + [i] + S
  end

  puts S.join(" ")
end