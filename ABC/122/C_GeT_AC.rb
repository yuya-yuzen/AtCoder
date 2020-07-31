nq = gets.chomp.split
n = nq[0].to_i
q = nq[1].to_i

s = gets.chomp

ac_from_1_to_i = [0]
ac_count = 0
n.times do |i|
  if s[i] == "A" && s[i+1] == "C"
    ac_count += 1
  end
  ac_from_1_to_i << ac_count
end

q.times do
  lr = gets.chomp.split
  ac_count = ac_from_1_to_i[lr[1].to_i - 1] - ac_from_1_to_i[lr[0].to_i - 1]
  puts ac_count
end