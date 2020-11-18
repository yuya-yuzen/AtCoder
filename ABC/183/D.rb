n, w = gets.chomp.split.map(&:to_i)

# 時間ごとの使用水量を格納する配列
a = Array.new(200005, 0)

n.times do
    s, t, p = gets.chomp.split.map(&:to_i)

    # 「累積和を格納する配列」にするための準備
    a[s] += p
    a[t] -= p
end

result = true

# 累積和を格納する
200001.times do |i|
    if a[i] > w
        result = false
        break
    end
    a[i+1] += a[i]
end

puts result ? "Yes" : "No"
