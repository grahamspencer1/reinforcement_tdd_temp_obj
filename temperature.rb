class Temperature

  def initialize(degree = {})
    @fahrenheit_temp = degree[:f]
    @celsius_temp = degree[:c]
  end

  def to_fahrenheit
    @fahrenheit_temp ||= (@celsius_temp.to_f * 9.0 / 5.0) + 32
  end

  def to_celsius
    @celsius_temp ||= (@fahrenheit_temp.to_f - 32) * 5.0 / 9.0
  end

end
