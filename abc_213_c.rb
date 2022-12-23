# 座標圧縮 ABC213 C Dif:481
if __FILE__ == $0
  H, W, N = gets.split.map(&:to_i)

  cards = []
  records = []
  columns = []
  N.times do |i|
    a, b = gets.split.map(&:to_i)
    cards.push [a, b]
    records.push a
    columns.push b
  end

  records.uniq!.sort!
  record_convert = {}
  records.size.times do |i|
    record_convert[records[i]] = i + 1
  end

  columns.uniq!.sort!
  column_convert = {}
  columns.size.times do |i|
    column_convert[columns[i]] = i + 1
  end

  cards.each do |rec, col|
    ans_rec = record_convert[rec]
    ans_col = column_convert[col]

    puts ans_rec, ans_col
  end
end