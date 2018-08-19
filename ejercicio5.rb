# Transformar la clase Herviboro en un módulo. Implementar el módulo en
# la clase Conejo mediante Mixin para poder acceder al método
# dieta desde la instancia. Finalmente imprimir la definición de Hervíboro.

module Herviboro
  def self.definir
   "Sólo me alimento de vegetales!"
  end

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
p conejo.saludar
p conejo.dieta
p Herviboro.definir
# Pregunta: ¿Por qué es mejor solución la implementación de Mixin
 # que mediante Herencia de Herencia?
#Porque permite ahorrar código y tener clases hijo con distintas características.
