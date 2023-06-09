# Класс CellularTelephone наследуется от класса Telephone и расширяет его свойствами color и type

class CellularTelephone < Telephone
  # Инкапсуляция (можно получить данные свойств но не изменять их)
  attr_reader :type, :color

  # Конструктор наследует свойства от Telephone и добавляет два новых
  # color, type
  def initialize(*args, type, color)
    super(*args)
    @type = type
    @color = color
  end

  # Полиорфизм от класса to_s вывод данных о телефоне
  def to_s
    super
    puts <<~TELEPHONE
    color: #{@color}
    type: #{@type}
    TELEPHONE
  end
end
