namespace :apagar_dados do
  desc "Apagar produto com id = 9 da tabela produto2"
  task apagar_id9: :environment do
    Produto2.find(9).destroy
    puts '############# Apagado produto de id 9 #############'
  end

  desc "TODO"
  task tabela_produto1: :environment do
  end

end
