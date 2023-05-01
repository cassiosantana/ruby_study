class Produto2 < ApplicationRecord
  validates :nome, presence: true, length: { minimum: 9 }
  validates :nome, uniqueness: { case_sensitive: false }

end
