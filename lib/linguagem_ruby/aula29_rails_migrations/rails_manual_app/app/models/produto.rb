class Produto
  attr_accessor :id, :nome
  def initialize(attrs)
    if attrs.present?
      self.id = attrs['id']
      self.nome = attrs['nome']
    end
  end

  def self.buscar
    produtos = ActiveRecord::Base.connection.exec_query('select * from produtos1')
    produtos.map { |p| Produto.new(p) }
  end
end
