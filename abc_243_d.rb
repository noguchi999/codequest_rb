# シミュレーション2 ABC243 D Dif:758
if __FILE__ == $0
  N, X = gets.split.map(&:to_i)
  S = gets

  move = []
  N.times do |i|
    if move.size == 0
      mvoe.push S[i]
    else
      if S[i] == "L" || S[i] == "R"
        move.push S[i]
      else
        if move[-1] == "L" || move[-1] == "R"
          move.pop
        else
          mvoe.push "U"
        end
      end
    end
  end

  move.each do |s|
    if s == "L"
      X *= 2
    elsif s == "R"
      X /= 2
    end
  end

  puts X
end