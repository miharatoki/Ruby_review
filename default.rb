def add_number(a = 1, b = 2)
  a + b
end

p add_number #引数に何も指定しなかった場合、デフォルト値の1と2が加算され、戻り値は3になる
p add_number(1,6)