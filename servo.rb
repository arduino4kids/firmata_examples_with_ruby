class Servo

  attr_accessor :position, :pin_number

  def initialize(arduino, pin_number)
    @arduino = arduino
    @pin_number = pin_number
    @arduino.pin_mode(@pin_number, Arduino::OUTPUT)
    @position = 0
  end

  def draw
    @arduino.analog_write(@pin_number, position)
  end
end
