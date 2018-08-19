# Corregir los errores para poder ejecutar ambos métodos.

class MiClase
      def self.de_clase
        puts 'Método de clase!'
    end
end

def de_instancia
    puts 'Método de instancia!'
end

de_instancia
MiClase.new.class.de_clase
