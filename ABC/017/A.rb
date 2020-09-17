se1 = gets.chomp.split
s1 = se1[0].to_i
e1 = se1[1].to_i

se2 = gets.chomp.split
s2 = se2[0].to_i
e2 = se2[1].to_i

se3 = gets.chomp.split
s3 = se3[0].to_i
e3 = se3[1].to_i

puts (s1 * e1 / 10) + (s2 * e2 / 10) + (s3 * e3 / 10)
