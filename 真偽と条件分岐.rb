a = 1 && 2 && 3
puts a


def country?(country)
 case country
 when 'Japan', '日本'
   'こんにちは'
 when 'us', 'アメリカ'
   'Hello'
 when 'italy', 'イタリア'
   'ciao'
 else
   '???'
 end
end

b = 'アメリカ'
puts country?(b)



country = '日本'
message =
case country
when 'Japan', '日本'
   'こんにちは'
when 'us', 'アメリカ'
   'Hello'
when 'italy', 'イタリア'
  'ciao'
else
    '???'
end
puts message

c = 'ruby'
puts c.upcase #.upcaseでは変数の中身は大文字にならない
puts c

d = 'ruby'
puts d.upcase! #.upcase!では、変数の中身も大文字に変化する
p d