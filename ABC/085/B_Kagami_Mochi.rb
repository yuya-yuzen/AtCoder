# n 個の整数が与えられます。
# この中に、何種類の異なる値があるでしょうか。

# 与えられる整数の数を取得
n = gets.chomp.to_i

# 与えられた整数を1つずつ格納する配列を宣言し、格納
nums = Array.new
n.times do |i|
    input = gets.to_i
    nums[i] = input
end

# 既に格納されている値を、再び格納しない配列を宣言し、与えられた整数を格納
nums_diff = Array.new
n.times do |i|
    unless nums_diff.include?(nums[i])
        nums_diff << nums[i]
    end
end

# 結果を出力
puts nums_diff.count