# keysメソッド
currencies = {japan: :yen, us: :dollar, india: :rupee} #ハッシュのキーを配列で返す
p currencies.keys  # =>[:japan, :us, :india]

# valuesメソッド
currencies = {japan: :yen, us: :dollar, india: :rupee} #ハッシュの値を配列で返す
p currencies.values # => [:yen, :dollar, :rupee]

# key?
currencies = {japan: :yen, us: :dollar, india: :rupee} #引数が、ハッシュのキーに含まれてたらtrueを返す
p currencies.key?(:japan) # => true
p currencies.include?(:us)  #key?のエイリアスメソッド

# &.演算子は、メソッドを呼び出されたオブジェクトがnilじゃなかったらその値を、nilならnilを返す
a= nil
p a&.upcase

# ||= は、オブジェクトがfalseもしくはnilだったら右辺を代入するという意味
a = false
b = nil
p a ||= 10
p b ||= 10


# !演算子は否定の演算子で、真ならfalseが、偽ならtrueが返る。それをもう一度!で反転させることでnilをなくし、trueかfalseのみの式にできる
p !!true
p !!nil