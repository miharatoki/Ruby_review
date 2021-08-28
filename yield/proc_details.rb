#procオブジェクトを実行する様々な方法
 add_proc = Proc.new{|a,b| a+b}

#callメソッドを使う
 p add_proc.call(10,20)
#yieldメソッドを使う
p add_proc.yield(10,20)
#.()を使う
p add_proc.(10,20)
#[]を使う
p add_proc[10,20]



# proc = Proc.new{|s| s.reverse}
# other_proc = proc.to_proc
# p proc.equal?(other_proc)

#to_procメソッドはレシーバーをProcオブジェクトにできる
split_proc = :split.to_proc #シンボルオブジェクトをProcにする
p split_proc #=> <Proc:0x00007fddc2149568(&:split)>
#このProcオブジェクトに引数を一つ渡すと、引数をレシーバにして元のシンボルと同じ名前のメソッドを実行する
p split_proc.call('p-r-o c') #=> ["p-r-o", "c"]  splitメソッドの、空白で分割するが実行される
#引数をふたつ渡すと、一つ目がレシーバーに、ふたつ目の引数がsplitメソッドの第１引数になる
p split_proc.call('p-r-o c', '-') #=> "p", "r", "o c"]  -で分割される
#引数が三つなら、三つ目が第2引数になる、以下繰り返し


#(&引数)では、引数に対してto_procメソッドを実行し、その戻り値をレシーバーの引数にしている
# ['mihara', 'toki'].map{|s| s.upcase}と同じ実行結果を短い記述で得る事ができる
p ['mihara', 'toki'].map(&:upcase)


def generate_proc(array)
  counter = 0
  Proc.new do 
    counter += 10
    array << counter
  end
end
value = []
sample_proc = generate_proc(value)
# generate_procメソッドを実行後も、Procオブジェクトの中身はの残り続けるので、sampole_procを実行するたびにProcオブジェクト内のarrayやcounterの中身は更新され続ける
# メソッドが生成されたときのコンテキスト（変数情報）を保持しているメソッドのことをクロージャと言う。
#　rubyではブロックやProcオブジェクトがクロージャ
p sample_proc.call #=> [10]
p sample_proc.call #=> [10,20]
