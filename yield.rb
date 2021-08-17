class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end


# def greeting
#   puts 'おはよう'
#   yield  #ブロックの処理を呼び出す（greeting do~でgreetingメソッドを呼び出しているので、do~endまでのブロック内の処理を実行する
#   yield  #複数回呼び出せる
#   puts 'こんばんは'
# end

# greeting do
#   puts 'こんにちは'
# end


# def aisatsu
#   puts 'おはよう'
#   #ブロックに引数を渡して、戻り値をtext変数に格納
#   text = yield('こんにちは')
#   puts text
#   puts 'こんばんは'
# end

# aisatsu do |a|
#   a * 2
# end


#ブロックをメソッドの引数としに受け取る
#ブロックを引数として渡すときは引数名の前に&をつける
#yieldメソッドでも代用できるが、ブロックを引数にすることで、他のメソッドにもブロックを引き継げるので使い分ける事ができる
def greeting(&block)
  puts 'おはよう'
  #callメソッドを使ってブロックを実行する
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end