# グローバル変数はプログラムのどこからでも参照、書き換えができる
$global = 'great'
$awesome = 'awesome'

class Product
  def initialize(name)
    $global = name
  end

  def self.name
    $global
  end

  def name
    $global
  end
end

p $global # => great
product = Product.new('dead')
p product.name # => dead   グローバル変数が書き換えられている

p $global  #　インスタンスでもクラスでもなくても呼び出せる
p $awesome