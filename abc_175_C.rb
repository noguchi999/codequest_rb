# 数直線 Dif:417 ABC175 C
if __FILE__ == $0
  X, K, D = gets.split.map(&:to_i)
  x = X.abs

  if 0 < x-K*D
    puts (x-K*D).abs
  else
    move_count = K - x/D
    jump_before = x - D*(x/D)
    jump_after = jump_before - D

    if move_count%2 == 0
      puts jump_before.abs
    else
      puts jump_after.abs
    end
  end
end