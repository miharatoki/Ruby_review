# refinementsは独自にスコープを設定できる
module StringShuffle
  refine String do  # fefineメソッドでrefinementsを適用するクラスを指定する
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  using StringShuffle
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
p user.shuffled_name
'Alice'.shuffle #Userクラス内以外では使えない。string型にshulleメソッドは使えない