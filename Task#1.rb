#Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby".

for item in (0...30)
  if item == 9 || item == 19 || item == 24
    puts "ruby"
  else
    puts "<3 ruby"
  end
end

