require_relative 'lib/telephone'
require_relative 'lib/cellular_telephone'

tel = CellularTelephone.new('c200', 'samsung', 'South Korean', 'cellular', 'black')
tel_mechanical = Telephone.new('ТАН-6м', 'Пермский телефонный завод', 'СССР')

array_answers = %w[Yes No]

puts 'You start calling'
puts '----------'
puts tel.call(array_answers)

# Это работать не будет
# puts tel.response_rus

