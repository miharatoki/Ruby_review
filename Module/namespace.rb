# class Second
#   def initialize(player, uniforom_number)
#     @player = player
#     @uniforom_number = uniforom_number
#   end
# end

# class Second
#   def initialize(digits)
#     @digits = digits
#   end
# end

# 最初のSecondクラスのインスタンスを作成したいが、二番目になってしまうので区別したい
# second = Second.new('Bob', 4)


# モジュール内にクラスを定義すれば、違うモジュールに同じクラスがあっても区別することができる
# そのモジュールに属するクラスという意味になる
# モジュールのこの使い方は、名前空間という
module Baseball
  class Second
    def initialize(player, uniforom_number)
      @player = player
      @uniforom_number = uniforom_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

baseball_second = Baseball::Second.new('Bob', 4)  #　参照するときはモジュール名::クラス名
p baseball_second
clock_second = Clock::Second.new(13)
p clock_second


module Soccer
end

class Soccer::keeper  #既に定義されているモジュールに属するクラスを後から作成することもできる
  def initialize(player, uniforom_number)
    @player = player
    @uniforom_number = uniforom_number
  end
end