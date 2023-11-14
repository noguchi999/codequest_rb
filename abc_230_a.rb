# ABC230 A
if __FILE__ == $0
  N = gets.to_i
  if N < 42
    if N.to_s.length == 1
      puts "AGC00#{N}"
    else
      puts "AGC0#{N}"
    end
  else
    if N.to_s.length == 1
      puts "AGC00#{N}"
    else
      puts "AGC0#{N}"
    end
  end
end
