# metaprogramming - módulo

cassio = 'teste'
def cassio.olha
  'teste cassio'
end

# herança por comportamento
cassio.olha
a = cassio.clone
puts a.olha

b = cassio.dup
puts b
puts b.olha # undefined method `olha' for "teste":String