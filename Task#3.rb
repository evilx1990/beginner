# Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.

class Task3
  def p_matrix(size)
    (0...size).each do |i|
      (0...size).each { |j| print i.equal?(j) ? '1' : '0' }
      print "\n"
    end
  end
end