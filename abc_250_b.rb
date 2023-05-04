# ABC250 B
if __FILE__ == $0
  N, A, B = gets.split.map(&:to_i)
  (1..N).each do |i|
    if i%2 == 1
      (1..A).each do |j|
        line = ""
        (1..N).each do |k|
          if k %2 == 1
            line += "." * B
          else
            line += "#" * B
          end
        end
        puts line
      end
    else

end