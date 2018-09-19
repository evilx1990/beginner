# Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case

def formatize(str, param) 
  case param
  when :camel
    str.split.map(&:capitalize).join
  when :underscore
    str.split.map(&:downcase).join('_')
  when :css
    str.split.map(&:downcase).join('-')
  end
end

str = 'i love ruby'

puts formatize(str, :camel)
puts formatize(str, :underscore)
puts formatize(str, :css)