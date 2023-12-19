# ABC232 C
if __FILE__ == $0
  N, M = gets.chomp.split.map(&:to_i)

  takahashi = Array.new(N+1) { Array.new(N+1, false) }
  M.times do |i|
    A, B = gets.chomp.split.map(&:to_i)
    takahashi[A][B] = true
    takahashi[B][A] = true
  end

  aoki_input = []
  M.times do |i|
    C, D = gets.chomp.split.map(&:to_i)
    aoki_input << [C, D]
  end

  (1..N).to_a.permutation(N).each do |_p|
    aoki = Array.new(N+1) { Array.new(N+1, false) }
    aoki_input.each do |c, d|
      c_conv = _p[c-1]
      d_conv = _p[d-1]

      aoki[c_conv][d_conv] = true
      aoki[d_conv][c_conv] = true
    end

    OK = true
    (1..N+1).each do |x|
      (1..N+1).each do |y|
        if takahashi[x][y] != aoki[x][y]
          OK = false
          break
        end
      end
    end

    if OK
      puts 'Yes'
      exit
    end
  end

  puts 'No'
end
