nxt = gets.chomp.split
n = nxt[0].to_i
x = nxt[1].to_i
t = nxt[2].to_i

count = 0
time = 0
while count < n
    count += x
    time += t
end

puts time
