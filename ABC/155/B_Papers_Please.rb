# あなたは AtCoder 王国の入国審査官です。
# 入国者の書類にはいくつかの整数が書かれており、
# あなたの仕事はこれらが条件を満たすか判定することです。
# 規約では、次の条件を満たすとき、またその時に限り、入国を承認することになっています。
# 書類に書かれている整数のうち、偶数であるものは全て、3または 5で割り切れる。
# 上の規約に従うとき、書類に N個の整数 A1,A2,,ANが書かれた入国者を承認するならば APPROVED を、
# しないならば DENIED を出力してください。

n = gets.to_i
a = gets.chomp.split
n.times do |i|
  a[i] = a[i].to_i
end

result = true
n.times do |i|
  if a[i].even? && (a[i] % 3 != 0 && a[i] % 5 != 0)
    result = false
    break
  end
end

if result
  puts "APPROVED"
else
  puts "DENIED"
end
