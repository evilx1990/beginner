#Написать рекурсивный метод для поиска значения ключа key9 в хеше:


def searchInHash(hsh, key)
  if hsh.respond_to?(:key?) && hsh.key?(key)
    return hsh[key]
  elsif hsh.respond_to?(:each)
    value = nil
    hsh.each { |*h| value = searchInHash(h.last,key) }
    value
  end
end

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

puts searchInHash(hash, :key9)