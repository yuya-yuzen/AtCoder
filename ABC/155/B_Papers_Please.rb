# ���Ȃ��� AtCoder �����̓����R�����ł��B
# �����҂̏��ނɂ͂������̐�����������Ă���A
# ���Ȃ��̎d���͂���炪�����𖞂��������肷�邱�Ƃł��B
# �K��ł́A���̏����𖞂����Ƃ��A�܂����̎��Ɍ���A���������F���邱�ƂɂȂ��Ă��܂��B
# ���ނɏ�����Ă��鐮���̂����A�����ł�����̂͑S�āA3�܂��� 5�Ŋ���؂��B
# ��̋K��ɏ]���Ƃ��A���ނ� N�̐��� A1,A2,,AN�������ꂽ�����҂����F����Ȃ�� APPROVED ���A
# ���Ȃ��Ȃ�� DENIED ���o�͂��Ă��������B

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
