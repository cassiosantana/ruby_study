# exemplo de blocos dentro de procs

processo = lambda do |argumento_simples, *multiplos_argumentos, &bloco|
    puts "argumento simples = #{argumento_simples}"
    puts "multiplos argumentos #{multiplos_argumentos}"
    bloco.call
end

processo.call("ruby", 1, 2, 3, 4, 5, 6) {puts "exemplo de bloco"}
