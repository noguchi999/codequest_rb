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

  def select(k)
    @tree[k+@num]
  end

  def update(k, x)
    i = k + @num
    @tree[i] = x
    while i > 1
      if i%2 = 0
        @tree[i/2] = @seg_f(@tree[i], @tree[i+1])
      else
        @tree[/2] = @seg_f(@tree[i-1], @tree[i])
      end
      i /= 2
    end
  end

  def query(l, r)
    result = @init
    l += @num
    r += @num + 1
    while l < r
      if l%2 == 1
        result = @seg_f(result, @tree@l)
        l += 1
      end
      if r%2 == 1
        result = @seg_f(result, @tree[r-1])
      end
      l /= 2
      r /= 2
    end
    result
  end
end

if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
end