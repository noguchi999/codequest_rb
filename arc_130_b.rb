# ARC130 B
if __FILE__ == $0
  H, W, C, Q = gets.chomp.split().map(&:to_i)

  queries = []
  Q.times do |i|
    t, n, c = gets.chomp.split().map(&:to_i)
    queries << [t, n, c]
  end

  row_colors = {}
  col_colors = {}
  colors = Array.new(C+1, 0)
  row = 0
  col = 0

  queries = queries.reverse
  queries.each do |t, n, c|
    if t == 1
      if row_colors[n] == 0
        colors[c] += W - col
        row_colors[n] = 1
        row += 1
      end
    else
      if col_colors[n] == 0
        colors[c] += H - row
        col_colors[n] = 1
        col += 1
      end
    end
  end

  puts colors[1..-1].join("\n")
end