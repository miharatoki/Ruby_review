:apple
:japan
:ruby_is_fun
#シンボルの作成　シンボルクラスのオブジェクト
p :apple.class # =>Symbol

symbol = :apple
p symbol.upcase

p :apple.methods

#　シンボル名が同じならオブジェクトidが同じなので、コンピュータが文字列よりも効率的に処理できる
#  見た目が文字列っぽいので、プログラマにとってみやすい
#  ハッシュのキーに使うと、文字列よりも高速で処理できる