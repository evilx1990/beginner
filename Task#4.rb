# Написать рекурсивный метод для поиска значения ключа key9 в хеше:

def search_in_hash(hsh, key)
  if hsh.respond_to?(:key?) && hsh.key?(key)
    hsh[key]
  elsif hsh.respond_to?(:each)
    value = nil
    hsh.each { |*h| value = search_in_hash(h.last, key) }
    value
  end
end

hash = { key1: {}, key2: {},
         key3: { key4: 'str', key5: 'str2',
                 key6: { key7: { key8: 1, key9: [2] } } } }

puts search_in_hash(hash, :key9)