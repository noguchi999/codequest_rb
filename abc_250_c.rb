# ABC250 C
if __FILE__ == $0
  N, A, B = gets.split.map(&:to_i)
  A = Array.new(N+1).map.with_index {|x, i| i}
  index = Array.new(N+1).map.with_index {|x, i| i}

  Q.times do |i|
    x = gets.split.map(&:to_i)
    x_index = index[x]

    right_x = nil
    if x_index != N
      right_x = A[x_index+1]
      A[x_index], A[x_index+1] = A[x_index+1], A[x_index]
      index[x] = x_index
      index[right_x] = x_index+1
    else
      left_x = A[x_index-1]
      A[x_index], A[x_index-1] = A[x_index-1], A[x_index]
      index[x] = x_index - 1
      index[left_x] = x_index
    end
  end

  puts A[1..-1]
end