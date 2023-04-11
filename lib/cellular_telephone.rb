# Наследование от класса Телефон свойств методов и переменных
class CellularTelephone < Telephone
  # Инкапсуляция видны только данные но без изменения их
  attr_reader :type, :color

  def initialize(*args, type, color)
    super(*args)
    @type = type
    @color = color
  end

  # Полиорфизм
  def call(array_answers)
    answer = array_answers.sample
    stop_call_rus(answer)
  end

  # Полиорфизм от класса CellularTelephone
  def to_s
    super + "color: #{color}"
  end

  # Инкапсуляция реализации от пользователя
  private

  def response_rus
    'Да.Слушаю?'
  end

  def mistake_call_rus
    'Абонент...перезвоните позже'
  end

  def stop_call_rus(answer)
    if answer == 'Yes'
      rand(@@beep).times do
        puts 'Гудок!Гудок'
      end
        response_rus
    else
      @@beep.times do
        puts 'Гудок!Гудок'
      end
        mistake_call_rus
    end
  end
end