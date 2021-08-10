a = 'abc'.class
puts a

puts "Line 1,
Line 2"

b = <<text
複数行の改行
ヒアドキュメント
text
puts b

c = sprintf('%0.5f', 1.2)
# sprintfは、指定した桁数の少数点までのフォーマットの文字列を作成する。
# ⬆︎の場合は1.2の小数点第5位まで表示する。（小数点以外にもたくさんのフォーマットを作れるらしい）
puts c