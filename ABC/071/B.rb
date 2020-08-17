# 英小文字からなる文字列 S が与えられます．
# S に現れない英小文字であって，最も辞書順（アルファベット順）で小さいものを求めてください．
# ただし，S にすべての英小文字が現れる場合は，代わりに None を出力してください．

s = gets.chomp

result = "None"

("a".."z").each do |char|
  unless s.include?(char)
    result = char
    break
  end
end

puts result
