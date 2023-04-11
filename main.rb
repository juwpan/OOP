require_relative 'lib/telephone'
require_relative 'lib/cellular_telephone'
require_relative 'lib/mechanical_telephone'

# Создаем эксемлпяр класса MechanicalTelephone
tel_mechanical = MechanicalTelephone.new('4-18-43', 'ТАН-6м', 'Пермский телефонный завод', 'СССР', 'механический', 'красный')

# Создаем эксемлпяр класса CellularTelephone
tel_cellular = CellularTelephone.new('8(976)162-40-56', 'c200', 'samsung', 'South Korean', 'cellular', 'black')

# Массив ответов на звонок(ответил на звонок или нет)
array_answers = %w[Yes No]

# Массив телефонов
array_tel = [tel_mechanical, tel_cellular]

# Выбор рандомного телефона
tel_call = array_tel.sample

puts 'You start calling'
puts '----------'

# Возвращает риализацию экземпляра в зависимости к какому классу принадлежит
if tel_call.instance_of?(CellularTelephone)
  puts tel_cellular.call(array_answers)
  puts '----------'
  puts "The call was made with"
  "#{tel_cellular}"
else
  puts tel_mechanical.call(array_answers)
  puts '----------'
  "Звонок был совершён c"
  "#{tel_mechanical}"
end
