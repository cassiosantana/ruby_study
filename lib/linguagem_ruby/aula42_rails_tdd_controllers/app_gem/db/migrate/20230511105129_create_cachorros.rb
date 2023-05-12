class CreateCachorros < ActiveRecord::Migration[7.0]
  def change
    create_table :cachorros do |t|
      t.string :nome
      t.string :raca

      t.timestamps
    end
  end
end
