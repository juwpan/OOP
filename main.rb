require_relative 'lib/telephone'
require_relative 'lib/cellular_telephone'

# Создаем эксемлпяр класса Telephone
tel_mechanical = Telephone.new('ТАН-6м', 'Пермский телефонный завод', 'СССР')

# Создаем эксемлпяр класса CellularTelephone
tel_cellular = CellularTelephone.new('c200', 'samsung', 'South Korean', 'cellular', 'black')

# Массив ответов на звонок(ответил на звонок или нет)
array_answers = %w[Yes No]

# Массив телефонов
array_tel = [tel_mechanical, tel_cellular]

# Выбор рандомного телефона
tel_call = array_tel.sample

puts 'You start calling'
puts '----------'

# Возвращает риализацию экземпляра в зависимости к какому классу принадлежит
if tel_call.instance_of?(Telephone)
  puts tel_cellular.call(array_answers)
  puts '----------'
  puts "The call was made from"
  "#{tel_cellular}"
else
  puts tel_mechanical.call(array_answers)
  puts '----------'
  "Звонок был совершён c"
  "#{tel_mechanical}"
end

# Это работать не будет т.к применена инкапсуляция 
# для этого метода в классе CellularTelephone

# puts tel.response_rus
