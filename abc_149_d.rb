if __FILE__ == $0
  N, K = gets.split(" ").map{|x| x.to_i}
  R, S, P = gets.split(" ").map{|x| x.to_i}
  T = gets

  hands = []
  ans = 0

  N.times do |i|
    if T[i] == "r"
      if i < K
        ans += P
        hands.push "p"
      elsif K <= i && hands[i-K] != "p"
        ans += P
        hands.push "p"
      else
        hands.push "x"
      end
    elsif T[i] == "s"
      if i < K
        ans += R
        hands.push "r"
      elsif K <= i && hands[i-K] != "r"
        ans += R
        hands.push "r"
      else
        hands.push "x"
      end
    elsif T[i] == "p"
      if i < K
        ans += S
        hands.push "s"
      elsif K <= i && hands[i-K] != "s"
        ans += S
        hands.push "s"
      else
        hands.push "x"
      end
    end
  end
  puts ans
end