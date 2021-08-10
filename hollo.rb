t1 = true
t2 = true
f1 = false
f2 = false
a = t1 && t2 || f1 && f2
b = t1 && (t2 || f2) && f2
puts a
puts b
puts !t1