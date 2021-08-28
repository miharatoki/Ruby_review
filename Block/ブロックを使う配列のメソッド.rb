numbers = [1,2,3,4,5,6]

# mapメソッドはブロックの中の処理の結果を新しい配列にして返す
new_numbers = []
numbers.each {|n| new_numbers << n*10}
p new_numbers

#　↓↓↓↓↓に置き換えられる

new_numbers = numbers.map do |n|
  n*10
end
p new_numbers



# selectメソッドは、ブロックの戻り値が真の要素を集めて配列に返す
even_numbers = numbers.select { |n| n.even? } #do~endは、{}に置き換えることができる。一行だけの時は{}を使った方が見やすい時もある
p even_numbers

# rejectは、ブロックの戻り値が偽の要素を集めて配列に返す
non_multiple_of_three = numbers.reject {|n| n%3 == 0}
p non_multiple_of_three

# injectメソッドの動きはググって　　文字にも使える
sum = numbers.inject(0) { |result, n| result + n}
p sum

s = ["a","b"]
up = []
s.each do |string|
  c = string.upcase
  up.push(c)
end
p up