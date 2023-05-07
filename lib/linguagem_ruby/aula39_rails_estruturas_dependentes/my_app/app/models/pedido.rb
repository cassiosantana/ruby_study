class Pedido < ApplicationRecord
  belongs_to :client
  has_many :item_pedidos
end
