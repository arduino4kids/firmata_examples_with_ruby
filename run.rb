$:.unshift File.join(File.dirname(__FILE__), 'lib')

require "rubygems"
require "arduino"
require 'ruby-debug'
require 'servo'
require 'led'
require 'motor'

arduino = Arduino.new(Dir["/dev/tty.usbserial*"][0], 57600)

#we are using the example servo pinout, plugin the servo to pin 9
#refer to the sweep example in arduino website
servo = Servo.new(arduino, 10)
motor = Motor.new(arduino, 9)

led = Led.new(arduino, 13)

#servo.position = 180
#servo.draw  ##watch the servo move to that position
#
#servo.position = 1
#servo.draw ## watch the servo move back to position 1
#
#
#led.on ## watch the led turn on
#
#motor.on ## watch the motor turn on
#
debugger

arduino.quit


