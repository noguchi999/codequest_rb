# ABC249 C
if __FILE__ == $0
  N, K = gets.chomp.split(" ").map(&:to_i)
  s_list = []

  N.times do |i|
    s_list << gets.chomp
  end

  ans = 0
  (1<<N).times do |bitnum|
    anstmp = 0
    choosed = []
    N.times do |shift|
      if bitnum >> shift & 1 == 1
        choosed << s_list[shift]
      end
    end

    (97..122).each do |code|
      alphabet = code.chr
      in_count = 0
      choosed.each do |s|
        in_count += 1 if s.include?(alphabet)
      end

      if in_count == K
        anstmp += 1
      end
    end

    ans = [ans, anstmp].max
  end

  puts ans
end