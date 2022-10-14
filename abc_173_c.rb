if __FILE__ == $0
  H, W, K = gets.split(" ").map{|x| x.to_i}
  c = []
  H.times do |i|
    tmp = gets
    c.push tmp
  end

  ans = 0
  (1<<H).times do |rec_red|
    (1<<W).times do |col_red|
      black = 0

      (H).times do |rec|
        (W).times do |col|
          if rec_red>>rec & 1==0 && col_red>>col & 1==0
            if c[rec][col] == "#"
              black += 1
            end
          end
        end
      end

      if black == K
        ans += 1
      end
    end
  end

  puts ans
end