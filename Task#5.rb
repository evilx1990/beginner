#Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case

def formatize(str, param)
  case param
  when :camel
    str.split().map() do |s|
      s.capitalize()
    end.join()
  when :underscore
    str.split().map() do |s|
      s.downcase()
    end.join('_')
  when :css
    str.split().map() do |s|
      s.downcase()
    end.join('-')
  end
end

str = 'i love ruby'

puts formatize(str, :camel)
puts formatize(str, :underscore)
puts formatize(str, :css)