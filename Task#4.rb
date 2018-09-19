# Написать рекурсивный метод для поиска значения ключа key9 в хеше:
# hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

class Task4
  def search_in_hash(hash, key)
    if hash.respond_to?(:key?) && hash.key?(key)
      hash[key]
    elsif hash.respond_to?(:each)
      value = nil
      hash.each { |h| value = search_in_hash(h.last, key) }
      value
    end
  end
end