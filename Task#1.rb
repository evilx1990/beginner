# Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby".

class Task1
  def puts_ruby
    (1..30).each { |i| puts [10, 20, 25].include?(i) ? '<3 ruby' : 'ruby' }
  end
end
