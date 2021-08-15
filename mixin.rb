module Greeter
  def hi
    'Hello'
  end
end

module Hi
end

class Member

end

class Alice < Member
  include Greeter
  include Hi
end

p Alice.include?(Greeter)  #include?メソッドでレシーバのクラスに引数のモジュールがincludeされているか確認することができる
p Alice.included_modules   # => [Greeter, Hi, Kernel]    included_modulesメソッドでincludされているモジュールを配列にできる
p Alice.ancestors          # スーパクラス、モジュールの情報を配列にできる
alice = Alice.new
p alice.class.include?(Greeter) #インスタンスに対してinclude?メソッドを使うことができる
p alice.class.included_modules
p alice.class.ancestors


module Taggable
  def price_tag
    "#{price}"  # モジュールでinclude先クラスのメソッドを使用したメソッドを定義することもできる
  end
end

class Product
  include Taggable
  def price
    1000
  end
end

product = Product.new
p product.price_tag  # => 1000


module Log
  def log(text)
    p "[LOG] #{text}"
  end
end

a = 'abc'
a.extend(Log)  # オブジェクトにextendでミックスインすると、オブジェクトでモジュールのメソッドを使用できる
a.log('Hello')