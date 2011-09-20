$:.unshift File.join(File.dirname(__FILE__), 'lib')

require "rubygems"
require "arduino"
require 'ruby-debug'
require 'servo'

arduino = Arduino.new(Dir["/dev/tty.usbserial*"][0], 57600)

servo = Servo.new(arduino, 9)

debugger

arduino.quit


