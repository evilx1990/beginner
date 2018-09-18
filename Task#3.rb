#Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.

print "enter size matrix: "
size = gets.to_i

puts "size * size"

for i in (0...size)
  for j in (0...size)
    if(i == j)
      print "1"
    else
      print "0"
    end
  end
  print "\n"
end