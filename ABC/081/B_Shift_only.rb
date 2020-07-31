# 黒板にN個の正の整数A1,…,ANが書かれています。
# 黒板に書かれている整数がすべて偶数であるとき，次の操作を行うことができます。
# 「黒板に書かれている整数すべてを，2で割ったものに置き換える。」
# 最大で何回操作を行うことができるかを求めてください。

# 整数の数を取得
n = gets.chomp.to_i

# 黒板に書かれている整数を取得
nums = gets.chomp.split
n.times do |i|
  nums[i] = nums[i].to_i
end

# 操作が出来た回数を記録する変数を定義
counter = 0

# 全て偶数であるか判定し、その場合は操作を行い、再び判定する
loop do
  
  # 奇数があるか判定するための変数を定義
  odd = false
    
  # 奇数がないか（全て偶数であるか）判定
  nums.each do |num|
    if num.odd?
      odd = true
      break
    end
  end
  
  # 奇数が含まれていないか判定
  # 含まれていなければ、操作を行い、再び判定する
  # 含まれていれば、ループを抜ける
  unless odd
    nums.map! do |num|
      num /= 2
    end
    counter += 1
  else
    break
  end
end

# 結果を出力
puts counter