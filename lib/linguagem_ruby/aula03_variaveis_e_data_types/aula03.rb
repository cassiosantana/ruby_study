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
end