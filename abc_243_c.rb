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

end