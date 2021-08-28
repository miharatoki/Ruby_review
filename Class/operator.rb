#
class User
  def name=(value) # =でおわるメソッドは、10行目のように変数に値を格納する形で呼び出すことができる
    @name = value
  end
end

user = User.new
p user.name = 'Alice'

class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)  # ==というメソッドを再定義
    if other.is_a?(Product)
      code == other.code  #codeが同じなら、同じProductとみなす
    else
      false
    end
  end
end

a = Product.new('a-1', 'a')
b = Product.new('b-1', 'b')
c = Product.new('a-1', 'a')
p a == b  # => false
p a == c  # => true


# equal?メソッドは、object_idが等しい場合にtrueを返す
a = 'abc'
b = 'abc'
p a.equal?(b)  # => false
c = a
p a.equal?(c)  # => true

# ==は、オブジェクトの内容が等しいとtrueを返す
p a == b

# .eql?メソッドは、ハッシュのキーとして２つのオブジェクトが等しいとtrueを返す
p 1 == 1.0 # true
h = {1 => 'integer', 1.0 => 'float'}
p 1.eql?(1.0) # 1と1.0は、ハッシュのキーにしたときに違うキーとして扱われるため、.eql?メソッドではfalseになる