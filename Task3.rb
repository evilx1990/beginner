# Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.
require 'matrix'

class Task3
  def p_matrix(size)
    Matrix.scalar(size, 1).to_a.each {|line| puts line.inspect}
  end
end