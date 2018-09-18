=begin
Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов. Пример:
    array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

get_all(array, String)
=> ['1', '2', '5', '10', 'i', 'love', 'ruby', 'text']

get_all(array, Integer)
=> [1, 2, 3, 4, 111, 222, 333, 444, 100000]
=end


def get_all(array, type)
  ar = []
  array.each do |i|
    if i.is_a?(Array) # Если вложен массив

      for r in i                  # Поиск вложенных массивов во влоденном массиве
        if r.is_a?(Array)
           ar << get_all(r,type)
        end
      end

      i.each { |x| ar << x if x.is_a?type}

    elsif i .is_a?(Hash)  # Если вложен хеш
        i.each { |k, v| ar << v if v.is_a?type}
    end
  end

  ar
end

array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

puts get_all(array, String)


