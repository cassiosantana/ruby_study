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

  class ClassVariable
    attr_reader :number1
    # class_variables do not need to be initialized to be visible
    @@number1 = 1

    def self.class_method
      @@number1
    end
  end

  class GlobalVariable
    attr_reader :number1


    $number1 = 4
    def self.class_method
      $number1
    end
  end
end