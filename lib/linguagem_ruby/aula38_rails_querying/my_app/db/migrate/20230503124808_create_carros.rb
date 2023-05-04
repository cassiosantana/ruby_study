class CreateCarros < ActiveRecord::Migration[7.0]
  def change
    create_table :carros do |t|
      t.string :nome
      t.references :marca, null: false, foreign_key: true
      t.integer :ano

      t.timestamps
    end
  end
end
