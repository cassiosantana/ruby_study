class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.integer :client_id
      t.float :valor_total
      t.string :status

      t.timestamps
    end
  end
end
