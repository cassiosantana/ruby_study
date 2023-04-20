class Produto
  attr_accessor :id, :nome
  def initialize(attrs = nil)
    if attrs.present?
      self.id = attrs['id']
      self.nome = attrs['nome']
    end
  end

  def salvar
    ActiveRecord::Base.connection.execute("INSERT INTO produtos1 (nome) VALUES ('#{self.nome}');")
  end

  def self.buscar
    produtos = ActiveRecord::Base.connection.exec_query('select * from produtos1')
    produtos.map { |p| Produto.new(p) }
  end
end
