fruits = ['apple','melon', 'orange']
fruits.each.with_index { |fruit, i| puts "#{i}: #{fruit}"}  # with_indexメソッドは配列の添え字（連番）をブロック引数の第二引数に渡せる

a = fruits.map.with_index { |fruit, i|  "#{i}: #{fruit}"}  # ["0: apple", "1: melon", "2: orange"]
p a

a = fruits.each.with_index(1) {|fruit, i| puts "#{i}: #{fruit}"}  # with_indexメソッドの引数の数字から添え字が始まる



b = [[10,20],[30,40],[50,60]]
areas = []
b.each do |width, height|   #widthに10が、heightに20が渡される
  areas << width * height   #10*20で200を配列に追加
end
p areas