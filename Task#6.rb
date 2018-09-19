# Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов. Пример:
#     array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]
#
# get_all(array, String)
# => ['1', '2', '5', '10', 'i', 'love', 'ruby', 'text']
#
# get_all(array, Integer)
# => [1, 2, 3, 4, 111, 222, 333, 444, 100000]

class Task6
  def get_all(array, type)
    ar = []
    array.each do |item|
      if item.is_a?(Array) # Если вложен массив

        item.each { |r| ar << get_all(r, type) if r.is_a?(Array) } # Проверка наличия вложенных массивов во вложенных массивах(рекурсия)

        item.each { |x| ar << x if x.is_a?type }
      elsif item .is_a?(Hash) # Если вложен хеш
        item.each_key { |key| ar << h if key.is_a?type }
      end
    end
    ar
  end
end
