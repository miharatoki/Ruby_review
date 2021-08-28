a = [1,2,3]
p *a  # *を付けると展開されて別々の要素になる
p [*a] #[]の中に展開されて[1,2.3]になる
p [0,*a,4,5] # [0, 1, 2, 3, 4, 5]

#　%wを使うと、空白を区切りとして配列を作る
b = %w(apple melon orange) #()で囲っても!で囲っても同じ
c = %w!apple melon orange!
p b
p c

d = %W(big\ apple small\ melon)  # \を入れると空白を含んだ文字列にできる
p d

e = 'Ruby,Java,PHP,'.split(',')  #splitメソッドは、引数の''内の文字で区切る。今回は,で区切っている
p e


a = Array.new(5) #要素が５個の配列を作る。初期値はnil
p a
a = Array.new(5,0) #第二引数を初期値とする
p a