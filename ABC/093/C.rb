a, b, c = gets.split.map(&:to_i)
arr = [a, b, c].sort
max = arr.max
count = 0
while arr.uniq.length != 1
    if arr[1] < max
        arr[0] += 1; arr[1] += 1
    else
        arr[0] += 2
    end
    arr.sort!
    max = arr.last
    count += 1
end
puts count
