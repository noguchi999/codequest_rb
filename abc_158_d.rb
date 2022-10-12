if __FILE__ == $0
  S = gets
  Q = gets.to_i
  inv = false

  S_queue = []
  S.size.times do |i|
    S_queue.push S[i]
  end

  Q.times do |i|
    TFC = gets.split(" ")
    if TFC[0] == "1"
      if inv == true
        inv = false
      else
        inv = true
      end
    else
      F = TFC[1]
      C = TFC[2]
      if inv == false
        if F == "1"
          S_queue.unshift C
        else
          S_queue.push C
        end
      else
        if F == "1"
          S_queue.push C
        else
          S_queue.unshift C
        end
      end
    end
  end

  ans = S_queue.join
  if inv == true
    ans = ans.reverse
  end
  puts ans
end