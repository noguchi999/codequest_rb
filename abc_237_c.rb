# ABC237 C
if __FILE__ == $0
  S = gets
  a_front = 0

  S.size.times do |i|
    if S[i] == "a"
      a_front += 1
    else
      break
    end
  end

  a_back = 0
  S.size.times.reverse_each do |i|
    if S[i] == "a"
      a_back += 1
    else
      break
    end
  end

  if a_back < a_front;
    puts "No"
    exit
  end

  _s = "a"*(a_back - a_front) + S
  N = _s.size
  N.times do |i|
    if S[i] != S[N-i-1]
      puts "No"
      exit
    end
  end

  puts "Yes"
end