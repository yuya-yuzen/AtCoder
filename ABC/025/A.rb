s = gets.chomp.split(//).repeated_permutation(2).to_a.sort!
n = gets.chomp.to_i
puts s[n-1].join
