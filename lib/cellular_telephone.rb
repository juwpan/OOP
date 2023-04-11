# Наследование от класса Telephone свойств, методов и переменных

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

  # Полиорфизм от класса Telephone с реализацией на русском языке
  def call(array_answers)
    answer = array_answers.sample
    stop_call_rus(answer)
  end

  # Полиорфизм от класса CellularTelephone вывод данных о телефоне
  def to_s
    super
    puts <<~TELEPHONE
    color: #{@color}
    type: #{@type}
    TELEPHONE
  end

  # Инкапсуляция (скрытая реализация от внешних воздействий)
  private

  # Возвращает ответ если звонок удался
  def response_rus
    'Yes,Hi!'
  end

  # Возвращает ответ если зволнок не удался
  def mistake_call_rus
    'Subscriber busy... call back later'
  end

  # В зависимоти от ответа будет выводить вариант ответа или звонок удался или нет
  def stop_call_rus(answer)
    if answer == 'Yes'
      rand(@@beep).times do
        puts 'Beep!'
      end
        response_rus
    else
      @@beep.times do
        puts 'Beep!'
      end
        mistake_call_rus
    end
  end
end