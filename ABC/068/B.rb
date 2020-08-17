# 高橋君は 2 で割れる数が好きです。
# 正整数 N が与えられるので、1 以上 N 以下の整数のうち、
# 最も 2 で割れる回数が多いものを求めてください。
# 答えは必ず 1 つに定まります。
# なお、2 で割っていき、何回あまりが出ずに割れるかを、
# 2 で割れる回数と呼ぶことにします。
# 例えば
#   6 ならば、6 -> 3で、1 回 2 で割れます。
#   8 ならば、8 -> 4 -> 2 -> 1で、3 回 2 で割れます。
#   3 ならば、0 回 2 で割れます。

n = gets.chomp.to_i

break_count_top = 0
break_count_top_num = 1

(1..n).each do |num|
  break_count = 0
  num_sandbox = num
  
  loop do
    if num_sandbox % 2 == 0
      break_count += 1
      num_sandbox /= 2
    else
      break
    end
  end
  
  if break_count > break_count_top
    break_count_top = break_count
    break_count_top_num = num
  end
end

puts break_count_top_num