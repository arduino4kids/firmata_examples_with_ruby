class Motor
  def initialize(arduino, pin_number)
    @arduino = arduino
    @pin_number = pin_number
  end

  def on
    @arduino.digital_write(@pin_number, Arduino::HIGH)
  end

  def off
    @arduino.digital_write(@pin_number, Arduino::LOW)
  end

end
