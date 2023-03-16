require 'set'

# ABC243 C
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  _p = []
  y_set = Set.new
  N.times do |i|
    X, Y = gets.split.map(&:to_i)
    _p << [X, Y]
    y_set << Y
  end

  S = gets
  direct_l = {}
  direct_r = {}

  N.times do |i|
    x, y = _p[i]
    if S[i] == 'L'
      if y in direct_l
        direct_l[y] << x
      else
        direct_l[y] = [x]
      end
    else
      if y in direct_r
        direct_r[y] << x
      else
        direct_r[y] = [x]
      end
    end
  end

end