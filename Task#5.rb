# Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case

class Task5
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
end
