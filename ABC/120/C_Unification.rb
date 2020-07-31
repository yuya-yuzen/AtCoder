s = gets.chomp
first_length = s.length

i = 0
while i < s.length
  if s.length > 0
    case s[i]
    when "0"
      if s[i+1] == "1"
        s.slice!(i, 2)
        if i >= 2
          i -= 2
        elsif i == 1
          i -= 1
        end
      else
        i += 1
      end
    when "1"
      if s[i+1] == "0"
        s.slice!(i, 2)
        if i >= 2
          i -= 2
        elsif i == 1
          i -= 1
        end
      else
        i += 1
      end
    else
      i += 1
    end
  else
    break
  end
end

puts s ? first_length - s.length : first_length