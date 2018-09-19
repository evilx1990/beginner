# Предыдущие таски обьеденить в классы, собрать вместе в модуле.
# Каждый таск запускается с помощью консоли.
# То-есть, ввели в консоли 1 - запускается и выполняется первый таск

require_relative './Task#1'
require_relative './Task#2'
require_relative './Task#3'
require_relative './Task#4'
require_relative './Task#5'
require_relative './Task#6'

module Tasksable
  def menu
    loop do
      system 'clear'

      puts '1 - <3 ryby'
      puts '2 - circle'
      puts '3 - matrix'
      puts '4 - hash'
      puts '5 - string changes'
      puts '6 - search types'
      puts '0 - exit'

      print 'enter >> '
      choose = gets.to_i

      case choose
      when 1
        love_ruby
      when 2
        circle
      when 3
        matrix
      when 4
        hash
      when 5
        str_change
      when 6
        search_types
      end

      print 'press enter'
      gets
      break if choose == 0
    end
  end

  def love_ruby
    v = Task1.new
    v.puts_ruby
  end

  def circle
    v = Task2.new
    print 'enter radius: '
    v.p_circle(gets.to_i)
  end

  def matrix
    v = Task3.new
    print 'enter matrix size(matrix is ​​semantic) : '
    v.p_matrix(gets.to_i)
  end

  def hash
    v = Task4.new
    puts "value search from 'key9' key in hash { key1: {}, key2: {}, /
          key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2] } } } }"
    hash = { key1: {}, key2: {},
             key3: { key4: 'str', key5: 'str2',
                     key6: { key7: { key8: 1, key9: [2] } } } }
    print 'result : '
    puts v.search_in_hash(hash, :key9)
  end

  def str_change
    v = Task5.new
    str = 'i love ruby'
    puts v.formatize(str, :camel)
    puts v.formatize(str, :underscore)
    puts v.formatize(str, :css)
  end

  def search_types
    v = Task6.new
    array = [[1, 2, 3, 4, '1'], %w[2 5 10], [111, 222, 333, 444],
             %w[i love ruby], { key: 'value' }, [[['text', 100_000]]]]

    puts v.get_all(array, String)
  end

end

class Run
  extend Tasksable
end

Run.menu
