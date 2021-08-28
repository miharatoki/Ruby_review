module Log
  def log(text)
    p text
  end
  module_function :log  # module_functionメソッどでlogメソッドをミックスインとしても、得意メソッドとしても使えるようにできる
end

class User
  include Log
  def user_log
    log('hoge')
  end
end

Log.log('foo')
user = User.new
user.user_log

p Math.sqrt(9) #Mathモジュールは数学で使う関数（メソッド）が多く定義されている。sqrtは平方根

require 'singleton'
class Human
  include Singleton
  attr_accessor :a, :b

  def initialize
    @a = a
    @b  = b
  end
end

# シングルトーンでは一つのインスタンスしか作成されない
# Human.new # シングルトーンモジュールを使うとnewメソッドがprivateメソッドになる
h = Human.instance
h.a = 'example'
h.b = 'hoge'
p h.a

i = Human.instance
p i.a  #　変数iに格納したインスタンス変数と同じ値を持っている

