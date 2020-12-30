n, k = gets.chomp.split.map(&:to_i)
h = []
n.times { h << gets.to_i }
h.sort!

diffs = []
(n - k + 1).times do |i|
    diff = h[i + k - 1] - h[i]
    diffs << diff
end
puts diffs.min
