# 二分探索2 ABC248 D Dif:793
def nibutan_left(a_index, x, l)
  _l = 0
  r = a_index[x].size - 1
  while 1 < r - 1
    c = (_l + r) / 2
    if l <= a_index[x][c]
      r = c
    else
      _l = c
    end
  end
  r
end

def nibutan_right(a_index, x, r)
  _l = 0
  _r = a_index[x].size - 1
  while 1 < _r - 1
    c = (_l + _r) / 2
    if a_index[x][c] <= r
      _l = c
    else
      _r = c
    end
  end
  _l
end

if __FILE__ == $0
  N = gets
  A = gets.split.map(&:to_i)

  a_index = Array.new(10**6).map{[0]}
  N.times do |i|
    a_index[A[i]].push i+1
  end

  (10**6).times do |i|
    a_index[i].push 10**6
  end

  Q = gets.split.map(&:to_i)
  Q.times do |i|
    l, r, x = gets.split.map(&:to_i)
    l_index = nibutan_left(a_index, x, l)
    r_index = nibutan_right(a_index, x, r)

    puts r_index - l_index + 1
  end
end