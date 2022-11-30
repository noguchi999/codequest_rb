# Bit全探索 Dif:595 ABC167 C
if __FILE__ == $0
  N, M, X = gets.split.map(&:to_i)

  c = []
  a = []
  N.times do |i|
    ca = gets.split.map(&:to_i)
    c.push ca[0]
    a.push ca[1..]
  end

  ans = 10**20
  (1<<N).each do |i|
    cost = 0
    skill = [0] * M

    N.times do |shift|
      if i>>shift & 1 == 1
        cost += c[shift]
        M.times do |j|
          skill[j] += a[shift][j]
        end
      end
    end

    if x <= skill.min
      ans = [ans, cost].min
    end
  end

  if ans == 10**20
    puts -1
  else
    puts ans
  end
end