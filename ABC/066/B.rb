s = gets.chomp.chop!.chop!
loop do
    half = s.length / 2
    front = s[0, half]
    back = s[half, half]
    break if front == back || s.length <= 0
    s.chop!.chop!
end
puts s.length
