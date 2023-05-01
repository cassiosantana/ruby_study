class AddDescricaoProduto2 < ActiveRecord::Migration[7.0]
  def change
    add_column :produto2s, :descricao, :text
  end
end
