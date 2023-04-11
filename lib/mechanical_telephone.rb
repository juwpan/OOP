# Создание абстрактного класса Telephone
class MechanicalTelephone < Telephone
  # Инкапсуляция (можно получить данные свойств но не изменять их)
  attr_reader :type, :color

  # Конструктор наследует свойства от Telephone и добавляет два новых
  # color, type
  def initialize(*args, type, color)
    super(*args)
    @type = type
    @color = color
  end

  # Полиморфизм (от класса Telephone здесь реализация в ином виде)
  def call(array_answers)
    answer = array_answers.sample
    stop_call(answer)
  end
  
  # Полиорфизм от класса to_s выводит данные о телефоне  c наследованием от Telephone
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
