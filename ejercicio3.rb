# Se tiene la clase Vehicle que recibe como argumento un modelo y un año.
# El método engine_start enciende el vehículo.

class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  # El método engine_start heredado debe además imprimir
  # 'El motor se ha encendido!'.
  def self.engine_start
    @start = true
    p '¡El motor está encendido!'
  end
end

# Crear una clase Car que herede de Vehicle
class Car < Vehicle
# El constructor de Car, además de heredar las propiedades de Vehicle,
# debe incluir un contador de instancias de Car.
  @@counter = 0
  def initialize(model, year)
    super
    @@counter += 1
  end
  # Crear un método de clase en Car que devuelva la cantidad de instancias.
  def self.amount
  @@counter
  end
end
# Instanciar 10 Cars.
a = 10.times { Car.new('Minicooper', 2018) }
# Consultar la cantidad de instancias generadas de Car
# mediante el método de clase creado.
p Car.amount
