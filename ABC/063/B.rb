# 英小文字からなる文字列 S が与えられます。
# S に含まれる文字がすべて異なるか判定してください。

s = gets.chomp

diff = true

s.length.times do |i|
  (s.length - i - 1).times do |j|
    if s[i + j + 1] == nil
      break
    end
    
    if s[i] == s[i + j + 1]
      diff = false
      break
    end
  end
  
  unless diff
    break
  end
end

if diff
  puts "yes"
else
  puts "no"
end
