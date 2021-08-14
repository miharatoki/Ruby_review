#クラス変数はクラスメソッド内、インスタンスメソッド内、スーパクラス、サブクラスで共有される変数（継承関係ならどこでも）
#クラス変数は「@@」で表す
class Product
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

p Product.name # => 'DVD'  DVDクラスでクラス変数@@nameに'DVD'を代入したので、Productクラス内クラス変数も'DVD'になっている。
p DVD.name     # => 'DVD'
product = Product.new('hoge')
p product.name
p Product.name  #インスタンス作成時にinitialazeメソッドで@@nameにhogeを代入したので、クラス変数@@nameはhogeになる
p DVD.name  # => 'hoge'
p 