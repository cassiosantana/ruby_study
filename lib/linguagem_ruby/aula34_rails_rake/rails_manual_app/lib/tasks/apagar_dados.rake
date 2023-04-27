namespace :apagar_dados do
  desc "Apagar produto com id = 9 da tabela produto2"
  task apagar_id9: :environment do
    Produto2.find(9).destroy
    puts '############# Apagado produto de id 9 #############'
  end

  desc "Apagar o ultimo produto da tabela produto2"
  task apagar_ultimo: :environment do
    Produto2.last.destroy
    puts '############# Apagado ultimo produto adicionado #############'
  end

end
