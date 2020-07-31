nq = gets.chomp.split
n = nq[0].to_i
q = nq[1].to_i

a = Array.new(n, 0)

q.times do
    lrt = gets.chomp.split
    l = lrt[0].to_i - 1
    r = lrt[1].to_i - 1
    t = lrt[2].to_i

    (l..r).each do |i|
        a[i] = t
    end
end

n.times do |i|
    puts a[i]
end
