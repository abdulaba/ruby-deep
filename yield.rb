def saludar(nombre="Andrés")
  yield nombre
end

# puts saludar { |nombre| puts nombre}

def saludar2(&bloque)
  bloque.call
end

puts saludar2 { "Hola,¿qué tal?" }

# def saluda3
#   yield
# end

# saluda3 #no blocked given error

def saludar4
  return "No block given" unless block_given?

  yield
end

puts saludar4
