# ABC238 D
if __FILE__ == $0
  n = gets.split.map(&:to_i)
  n.times do |t|
    a, s = gets.split.map(&:to_i)
    up = 0
    ans = "Yes"
    n = [a.bit_length, s.bit_length].max

    n.times do |i|
      ai = a>>i & 1
      si = s>>i & 1
      if ai == 0
        if up == 1 && si == 0
          up = 1
        else
          up = 0
        end
      else
        if up + si == 1
          ans = "No"
          break
        end
        up = 1
      end

      if i == n - 1 && up == 1
        ans = "No"
      end
    end
  end

  puts ans
end