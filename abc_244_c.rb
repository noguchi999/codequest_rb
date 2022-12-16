# インタラクティブ ABC244 C Dif:165
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  Used = [false] * (2*N+2)
  p 1

  Used[1] = true
  (N+1).times do |i|
    x = gets.split.map(&:to_i)
    Used[x] = true

    if x == 0
      exit
    end

    (1..2*N+1).each do |k|
      if Used[k] == false
        puts k
        Used[k] = true
        break
      end
    end
  end
end