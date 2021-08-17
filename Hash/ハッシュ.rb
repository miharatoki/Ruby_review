currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
#             #　キー　　　　 値

# currencies['italy'] = 'euro' #ハッシュの中にキーと値を追加するコード
# currencies['japan'] = '円'   #すでにキーが存在していたら値が上書きされる
# p currencies
# p currencies['japan']  #ハッシュから値を取り出すコード => '円'

# currencies.each do |key, value| #第一ブロック引数にキーが、第二引数に値が入る
#   puts "#{key} : #{value}"
# end

# currencies.each do |key_value| #ブロック引数を一つにすると、配列で、["キー", "値"]が入る
#   key   = key_value[0]
#   value = key_value[1]
#   puts "#{key} : #{value}"
# end

# a = {'x' => '1', 'y' => '2'}
# b = {'y' => '2', 'x' => '1' }
# # p a == b                       #ハッシュのキーとあたいが全て同じならtrueが返る
# #                                #順番が違っても、キーに対応した値が同じならtrueが返る
# p a.delete('x')  # deleteメソッドの戻り値は削除した値
# p b.delete('z') {|key| "not found: #{key}"}   #ブロックを渡すと値が見つからないときの戻り値を作成できる


# ハッシュのキーをシンボルにする
# currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee'}
# p currencies[:us]
# currencies[:italy] = 'euro'  #ハッシュに新しいキーと値を追加する
# p currencies

# currenies = { japan: 'yen', us: 'dollar', india: 'rupee'}  # =>の記述を省くことができる、シンボルの位置が右へ移るので注意する
# p currencies

# currencies = { japan: :yen, us: :dollar,  india: :rupee}   # 値もシンボルにすることができる。シンボル同士が向き合う
# currencies[:italy] = :euro
# p currencies

h = Hash.new('hello')  #キーの指定がないと値にhellowを返す
p h[:hoge]

h = Hash.new { |hash, key| hash[key] = 'hello'}
p h[:hoge]
p h


