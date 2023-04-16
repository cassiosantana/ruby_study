class CarrosComCampoAtivo < ActiveRecord::Migration[7.0]
  def change
    add_column(:carros, :ativo, :boolean)
  end
end
