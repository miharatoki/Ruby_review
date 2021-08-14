class Product
  NAME = "A produt"
end
p Product::NAME.upcase! #定数は変更することが出来るが推奨されない

class Product
  NAME = "A produt".freeze #　freezeメソッドで凍結せせることで変更できなくする
end
p Product::NAME.upcase! # => method_publicity.rb:9:in `upcase!': can't modify frozen String (FrozenError)


class Product
  NAME = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze #　mapの繰り返し処理で配列の各要素にfreezeし、最後に配列の戻り値に対してfreezeしている
end
p Product::NAME.upcase! # => method_publicity.rb:9:in `upcase!': can't modify frozen String (FrozenError)
