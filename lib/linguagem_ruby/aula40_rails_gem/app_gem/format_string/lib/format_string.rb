# frozen_string_literal: true

require_relative "format_string/version"

module FormatString
  class Error < StandardError; end

  class Moeda
    def self.br(numero)
      "R$#{numero}"
    end

    def self.us(numero)
      "$#{numero}"
    end
  end
end
