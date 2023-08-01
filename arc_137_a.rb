# ARC137 A
if __FILE__ == $0
  L, R = gets.split.map(&:to_i)

  (L..L+999).each do |l|
    (R..R-999).reverse_each do |r|
      if l < r
        if l.gcd(r) == 1
          ans = (r-l, ans).max
        end
      else
        break
      end
    end
  end
  puts ans
end