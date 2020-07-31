# すぬけくんは 3 匹のヤギにクッキーを渡したいです。
# すぬけくんは A 枚のクッキーが入った缶と、B 枚のクッキーが入った缶を持っています。 
# すぬけくんは A,B,A+B のいずれかの枚数のクッキーをヤギたちに渡すことができます。
# 3 匹のヤギが同じ枚数ずつ食べられるようにクッキーを渡すことが可能かどうか判定してください。

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

if a % 3 == 0 || b % 3 == 0 || (a + b) % 3 == 0
    puts "Possible"
else
    puts "Impossible"
end