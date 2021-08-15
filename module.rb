# モジュールからインスタンスを作成したり、クラスへ継承させることはできない
# モジュールは、複数のクラスにミックスイン（挿入して機能を追加）できる
# privateにすることでクラス内でしか呼び出せなくすることもできる
module Greeter
  private
  def hello
    'Hello'
  end
end

class Alice
  include Greeter

  def hi
    p hello
  end

end

class Bob
  extend Greeter #extendにするとクラスメソッドとして外部から呼び出すこともできる

  def self.hi
    p "#{hello} I'm Bob!!"
  end
end

alice = Alice.new
alice.hi
Bob.hi

# Enumerableモジュールは配列やハッシュなどの繰り返し処理ができるクラスにincludeされているモジュール
p Array.include?(Enumerable)
p Hash.include?(Enumerable)

class Repetition
  def self.a(array)
    p array.map {|n| n*10}
  end
end

Repetition.a([1,2,3])
p Repetition.include?(Enumerable)

# Comparableモジュール
p 23 <=> 58

class Tempo
  attr_reader :a, :b
  def initialize(a,b)
    @a = a
    @b = b
  end
  def contrast
    p a < b
  end
end
tempo = Tempo.new(1,2)
tempo.contrast
p tempo.class.include?(Comparable)

p 