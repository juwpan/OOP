# Создание абстрактного класса Telephone
class Telephone
  # Переменная класса
  @@beep = 10

  # Инкапсуляция (можно получить данные свойств но не изменять их)
  attr_reader :model, :manufacturer, :county

  # Конструтор класса  Telephone с начальными свойствами
  def initialize(model, manufacturer, county)
    @model = model
    @manufacturer = manufacturer
    @county = county
  end

  # Полиорфизм (в классе CellularTelephone реализация в ином виде
  def call(array_answers)
    answer = array_answers.sample
    stop_call(answer)
  end
  
  # Полиорфизм от класса to_s выводит данные о телефоне
  def to_s
    puts <<~TELEPHONE
    Model: #{@model}
    Manufacturer: #{@manufacturer}
    County: #{@county}
    TELEPHONE
  end

  # Инкапсуляция (скрытая реализация от внешних воздействий)
  private

  # Возвращает ответ если звонок удался
  def response
    'Да.Слушаю?'
  end

  # Возвращает ответ если зволнок не удался
  def mistake_call
    'Абонент занят или в не зоны доступа...перезвоните позже'
  end

  # В зависимоти от ответа будет выводить вариант ответа или звонок удался или нет
  def stop_call(answer)
    if answer == 'Yes'
      rand(@@beep).times do
        puts 'Гудок!'
      end
        response
    else
      @@beep.times do
        puts 'Гудок!'
      end
        mistake_call
    end
  end
end
