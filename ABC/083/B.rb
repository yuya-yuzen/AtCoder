# 1以上N以下の整数のうち、 1 <= N <= 10^4
# 10進法で各桁の和が
# A以上B以下であるものについて、 1 <= A <= B <= 36
# 総和を求めよ

# N, A, Bを取得
input = gets.chomp.split
n = input[0].to_i
a = input[1].to_i
b = input[2].to_i

# 扱いうる整数を配列に格納
nums_all = Array.new
n.times do |i|
  nums_all[i] = i + 1
end

# 条件を満たす整数を格納する配列を定義
nums = Array.new

# 条件を満たす整数を配列に格納
n.times do |i|
  
  # 各桁の和を代入する変数を定義
  digit_sum = 0

  nums_all[i].to_s.length.times do |j|
    digit_sum += nums_all[i].to_s[j].to_i
  end
  
  # 各桁の和が条件を満たすか判定
  if a <= digit_sum && digit_sum <= b
    nums << nums_all[i]
  end
end

# 条件を満たす整数の和を求める
sum = 0
nums.length.times do |i|
  sum += nums[i]
end

# 結果を出力
puts sum
