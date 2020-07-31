s = gets.to_i
arr = [s]

def func n
    return n.even? ? n / 2 : 3 * n + 1
end

i = 2
loop do
    num = func(arr.last)
    break if arr.include?(num)
    arr << num
    i +=1
end

puts i