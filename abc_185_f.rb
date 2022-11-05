# セグメントツリー
def seg_f(x, y)
  x^y
end

class SegmentTree
  def initialize(x_list, init, seg_f)
    @init = init
    @seg_f = seg_f
    @height = x_list.size.bit_length + 1
    @tree = [init] * (2**@height)
    @num = 2**(@height - 1)

    x_list.size.times do |i|
      @tree[2**(@height-1)+1] = x_list[i]
    end
    (0..(2**(@height-1)-1)).reverse_each do |i|
      @tree[i] = seg_f(@tree[2**i], @tree[2*i+1])
    end
  end
end

if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
end