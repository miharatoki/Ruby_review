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


#callメソッドの引数でブロックに引数を渡せる
def greeting(&block)
  puts 'おはよう'
  p block.nil?
  text = block.call('こんにちは')
  puts text
end

greeting do |text|
  text*2
end


#ブロックを引数として別のメソッドへ渡せる
def greeting_ja(&block)
 texts = ['おはよう','こんにちは','こんばんは']
 greeting(texts, &block)
end

def greeting(texts, &block)
  p texts[0]
  text = block.call(texts[1])
  p text
  p texts[2]
end

greeting_ja do |text|
  text*2
end

proc = Proc.new do
 'Hello'
end
p proc.call

#ブロック引数に初期値を設定することも可能
proc = Proc.new{|a=10, b=0| a + b}
p proc.call


def greeting(block)
  p block.call('おはよう')
end
#あらかじめ作成したprocクラスのインスタンスを変数に格納し、引数として渡すこともできる
repeat_proc = Proc.new{|text| text*2}
greeting(repeat_proc)

