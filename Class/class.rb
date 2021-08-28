class Foo
  puts "クラス構文直下のself: #{self}"

  def self.bar
    puts "クラスメソッドないのself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end

Foo.bar#クラスメソッドの呼び出し

foo = Foo.new
foo.baz


class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_parice(pri) #クラスメソッド
    "#{pri}円"
  end

  def to_s #インスタンスメソッド内でクラスメソッドを呼び出す
    formatted_parice = self.class.format_parice(price)  #self.calssでインスタンスが属しているクラス＝Productクラスになり、Product.format_priceと同じ意味になる
    "name: #{name}, price: #{formatted_parice}"
  end
end
product = Product.new("great move", 1000) #Productクラスのインスタンスを作成する
p product.to_s
