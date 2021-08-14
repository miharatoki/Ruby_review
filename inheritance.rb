# class User
# end
# user = User.new
# p user.nil? # =>false　Objectクラスを継承しているためnilではない
# p User.superclass  # =>Object  UserクラスのスーパークラスはObjectクラス
# p user.methods.sort
# p user.class # UserクラスのインスタンスであるuserのクラスはUser
# p user.instance_of?(User) #instance_og?メソッドで真偽を判定できる
# p user.instance_of?(Object) #全く同じクラスじゃないとtrueにはならない
# p user.is_a?(Object) #is_a?メソッドはis_aの関係ならクラスが違くてもtrueになる（userはObjectクラスの一部ですか？）


class Product  #オブジェクトに設定できる値を属性という
  attr_reader :name, :price
  @name = "Product"
  
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

product = Product.new('A greate move', 1000)
p product.to_s


class DVD < Product  #サブクラス<スーパークラスの構文を使うとクラスの継承ができる
  attr_reader :running_time #Productクラスで:nameと:priceは定義されているのでここでは定義不要
  @name = "DVD"

  def initialize(name, price, running_time)
    # @name = name
    # @price = price
    super(name, price) #superでスーパークラスで同名のメソッドを呼び出せる、
    @running_time = running_time
  end

  def to_s #to_sメソッドは親クラスと共通なのでsuperメソッドが使える
    "#{super}, running_time: #{running_time}" #　サブクラスで、スーパークラスの処理を上書きすることをオーバーライドという
  end

  def self.instance_name(naem)
    @name = name
  end
end

dvd = DVD.new('A greate move', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s
p Product.name
p DVD.name  #サブクラスのクラスインスタンス変数はスーパークラスとは内容が別々で管理される。サブクラスで違う値を代入後に、スーパークラスで呼び出してもスーパクラスで代入した値が呼び出される
p DVD.instance_name("morio")
p DVD.instance_name('')
p DVD.name
a = ('')
p a