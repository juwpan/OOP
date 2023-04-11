# Создание абстрактного класса Telephone
class Telephone
  # Переменная класса
  @@beep = 10

  # Инкапсуляция (можно получить данные свойств но не изменять их)
  attr_reader :model, :manufacturer, :county, :number

  # Конструтор класса  Telephone с начальными свойствами
  def initialize(number, model, manufacturer, county)
    @model = model
    @manufacturer = manufacturer
    @county = county
    @number = number
  end

  # Полиморфизм.В классах CellularTelephone и MechanicalTelephone реализация в ином виде
  def call(array_answers)
    answer = array_answers.sample
    stop_call(answer)
  end
  
  # Полиморфизм от класса to_s выводит данные о телефоне
  def to_s
    puts <<~TELEPHONE
    Number: #{@number}
    Model: #{@model}
    Manufacturer: #{@manufacturer}
    County: #{@county}
    TELEPHONE
  end

  # Инкапсуляция (скрытая реализация от внешних воздействий)
  private

  # Возвращает ответ если звонок удался
  def response
    'Yes,Hi!'
  end

  # Возвращает ответ если зволнок не удался
  def mistake_call
    'Subscriber busy... call back later'
  end

  # В зависимоти от ответа будет выводить вариант ответа или звонок удался или нет
  def stop_call(answer)
    if answer == 'Yes'
      rand(@@beep).times do
        puts 'Beep!'
      end
        response
    else
      @@beep.times do
        puts 'Beep!'
      end
        mistake_call
    end
  end
end
