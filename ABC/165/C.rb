nmq = gets.chomp.split
n = nmq[0].to_i
m = nmq[1].to_i
q = nmq[2].to_i

abcd = []
q.times do
    input = gets.chomp.split
    4.times do |i|
        input[i] = input[i].to_i
    end
    abcd << input
end

nums = []
m.times do |i|
    nums << (i + 1)
end

all_paterns = nums.repeated_combination(n).to_a
sums = []
all_paterns.each do |patern|
    sum = 0
    q.times do |i|
        a = abcd[i][0] - 1
        b = abcd[i][1] - 1
        c = abcd[i][2]
        d = abcd[i][3]

        sum += d if patern[b] - patern[a] == c
    end
    sums << sum
end

puts sums.max