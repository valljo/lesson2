module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class Dog
  include Speak
end

shaggy = Dog.new

shaggy.speak("bark")

