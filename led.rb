class Led
  def initialize(arduino, pin_number)
    @arduino = arduino
    @pin_number = pin_number
    @arduino.pin_mode(@pin_number, Arduino::OUTPUT)
  end

  def on
    @arduino.digital_write(@pin_number, Arduino::HIGH)
  end

  def off
    @arduino.digital_write(@pin_number, Arduino::LOW)
  end
end
