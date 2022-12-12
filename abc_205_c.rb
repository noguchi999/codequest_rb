# 条件分岐2 ABC205 C Dif:63
if __FILE__ == $0
  A, B, C = gets.split.map(&:to_i)

  if C%2 == 0
    if 0 <= A
      if 0 <= B
        if A.abs < B.abs
          puts "<"
        end

        if A.abs == B.abs
          puts "="
        end

        if A.abs > B.abs
          puts ">"
        end
      end

      if B < 0
        if A.abs < B.abs
          puts "<"
        end

        if A.abs == B.abs
          puts "="
        end

        if A.abs > B.abs
          puts ">"
        end
      end
    end

    if A < 0
      if 0 <= B
        if A.abs < B.abs
          puts "<"
        end

        if A.abs == B.abs
          puts "="
        end

        if A.abs > B.abs
          puts ">"
        end
      end

      if B < 0
        if A.abs < B.abs
          puts "<"
        end

        if A.abs == B.abs
          puts "="
        end

        if A.abs > B.abs
          puts ">"
        end
      end
    end
  end

  if C%2 == 1
    if 0 <= A
      if 0 <= B
        if A.abs < B.abs
          puts "<"
        end

        if A.abs == B.abs
          puts "="
        end

        if A.abs > B.abs
          puts ">"
        end
      end

      if B < 0
        if A.abs < B.abs
          puts ">"
        end

        if A.abs == B.abs
          puts ">"
        end

        if A.abs > B.abs
          puts ">"
        end
      end
    end

    if A < 0
      if 0 <= B
        if A.abs < B.abs
          puts "<"
        end

        if A.abs == B.abs
          puts "<"
        end

        if A.abs > B.abs
          puts "<"
        end
      end

      if B < 0
        if A.abs < B.abs
          puts ">"
        end

        if A.abs == B.abs
          puts "="
        end

        if A.abs > B.abs
          puts "<"
        end
      end
    end
  end
end