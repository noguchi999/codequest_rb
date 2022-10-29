# DP 3
if __FILE__ == $0
  N, W = gets.split.map(&:to_i)
  items = [[0, 0]]

  N.times do |i|
    _w, _v = gets.split.map(&:to_i)
    items.push [_w, _v]
  end

  dp = Array.new(N+1) {[0]*(W+1)}
  (1..N).each do |r_i|
    (W+1).times do |c_w|
      _w, _v = items[r_i]
      if c_w - _w < 0
        dp[r_i][c_w] = dp[r_i-1][c_w]
      else
        red = dp[r_i-1][c_w]
        blue = dp[r_i-1][c_w - _w] + _v
        dp[r_i][c_w] = [red, blue].max
      end
    end
  end

  puts dp[N][W]
end