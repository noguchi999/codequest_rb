# ABC241 D
require 'fenwick_tree'

def nibutan_left(x_index, k)
  l = 0
  r = x_index
  while 1 < r - l
  end
end

if __FILE__ == $0
  Q = gets.split.map(&:to_i)

  queries = []
  _set = Set.new
  Q.times do |i|
    tmp = gets.split.map(&:to_i)
    queries << tmp
    _set << tmp[1]
  end

  N = _set.size
  _set = _set.to_a.sort
  conv = {}
  _set.size.times do |i|
    conv[_set[i]] = i
  end
end