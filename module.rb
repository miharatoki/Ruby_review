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

