# frozen_string_literal: true

module Lesson03
  class TypesOfClasses
    def self.type_of(obj)
      obj.class
    end

    def self.superclass_of(obj)
      obj.class.superclass
    end

    def self.superclass_superclass_of(obj)
      obj.class.superclass.superclass
    end
  end

  class InstanceVariable
    attr_reader :number1, :number2
    # to be externally visible the instance variable needs to be initialized
    @number2 = 2

    def initialize
      @number1 = 1
    end

    def self.class_method
      @number2
    end
  end
end