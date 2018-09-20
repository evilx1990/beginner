# Написать рекурсивный метод для поиска значения ключа key9 в хеше:
# hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

class Task4
  def search_in_hash(hash, key)
    hash.each do |k, val|
      if val.is_a?(Hash)
        search_in_hash(val, key)
      elsif k == key
        puts val.inspect
      end
    end
  end
end