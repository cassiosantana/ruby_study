puts '=================================================================='
puts 'Estou iniciando na minha aplicação'
puts '=================================================================='

String.class_eval do
  def mostrar_dados
    puts "[[[[[#{self}]]]]]"
    self
  end
end

puts 'Cassio'.mostrar_dados
puts '=================================================================='

CONFIG = ENV["CONFIG"]
puts "[[[[[#{CONFIG}]]]]]"

puts '=================================================================='

# como ler um arquivo de configuração yml
CONFIGURACAO = YAML.load_file("#{Rails.root}/config/minha_configuracao_pessoal.yml")
