# Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.

print 'enter size matrix: '
size = gets.to_i

puts 'size * size'

(0...size).each do |i|
  (0...size).each do |j|
    if i == j
      print '1'
    else
      print '0'
    end
  end
  print "\n"
end