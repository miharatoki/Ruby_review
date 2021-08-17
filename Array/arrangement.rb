a = [1,2,3,4]
a << 5
p a
a.delete_at(0) #配列から引数番目の要素を削除する
p a

b,c = 1,2
p b
p c

d,e = [1,2]
p d
p e

num = [1,2,3,4]
sum = 0
num.each do |n|
  sum += n
end
p sum

sums = 0
num.each do
  sums += 1#numの中身ではなく、numの要素の数分＋１を繰り返す
end
p sums

numbers = [1,2,3,4]
s = 0

# 94ページ
numbers.each do |n|
  sum_value = n.even? ? n*10 : n # numbersの中が偶数だった場合はその偶数*１０をしてsum_valueに格納、奇数だった場合はそのまま格納
  s += sum_value
end
p s