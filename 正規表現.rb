text = "I love Ruby. Python is a great language. Java and Javascript are different."
p text.scan(/[A-Z][A-Za-z]+/)

address = "私の郵便番号は1234567です。 僕の住所は6770056 兵庫県西脇市板並町1234だよ。"
p address.gsub(/(\d{3})(\d{4})/, '\1-\2')
p address.scan(/\d\d\d\d\d\d\d/)  # \dは、半角数字を意味する

text = "クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）"
p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

