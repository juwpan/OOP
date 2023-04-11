class Telephone
  @@beep = 10

  # Инкапсуляция видны только данные но без изменения их
  attr_reader :model, :manufacturer, :county

  def initialize(model, manufacturer, county)
    @model = model
    @manufacturer = manufacturer
    @country = county
  end

  # Полиорфизм реализован в другом классе в ином виде
  def call(array_answers)
    answer = array_answers.sample
    stop_call(answer)
  end
  
  # Полиорфизм класса to_s
  def to_s
    "It's your telephone:\n"\
    "Model: #{@model}\n"\
    "Manufacturer: #{@manufacturer}\n"\
    "Type: #{@type}\n"
  end

  # Инкапсуляция реализации от пользователя
  private

  def response
    'Yes,Hi!'
  end

  def mistake_call
    'Subscriber ... call back later'
  end

  def stop_call(answer)
    if answer == 'Yes'
      rand(@@beep).times do
        puts 'Beep!Beep'
      end
        response
    else
      @@beep.times do
        puts 'Beep!Beep'
      end
        mistake_call
    end
  end
end

