module Test
  def result
    sum = @grade1 + @grade2
    avr = sum/2
    if avr > 4 then
      p "#{name}: Estudiante aprobado"
    else
      p "#{name}: Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
  p "La cantidad de alumnos en el curso es #{quantity} "
  end
end
# Crear una clase Student con un método constructor que recibirá 3 argumentos
# (nombre, nota1 y nota2). Cada una de las notas tendrá, por defecto, valor 4
# en el caso que no se ingrese una nota al momento de crear una nueva instancia.
class Student
  extend Attendance
  include Test
  @grade1 = 4
  @grade2 = 4
  @@quantity = 0
attr_accessor :name, :grade1, :grade2
# La clase también debe tener una variable de clase llamada quantity
# la que será iniciada en 0 y se incrementará en 1 cada vez que se instancie
# un nuevo objeto.
  def initialize(name, grade1, grade2)
    @name = name
    @grade1 = grade1
    @grade2= grade2
    @@quantity +=1
  end
  def self.quantity
    @@quantity
  end
end
# Crear un modulo Test con un método result. Este método debe calcular el
# promedio de 2 notas y si ese promedio es superior a 4 entregrar un mensaje
# que debe decir "Estudiante aprobado". En caso contrario, enviara un mensaje
# "Estudiante reprobado".

# Crear un segundo módulo Attendance con un método student_quantity que
# permita mostrar en pantalla la cantidad de estudiantes creados.
# Añadir a la clase Student el módulo Test como métodos de instancia y el módulo
# Attendance como métodos de clase.

Student.new('Juan', 7, 6).result
Student.new('Maria', 5, 5).result
Student.new('Orson', 2.4, 3.4).result
Student.new('Jaime', 4.5, 5.5).result
Student.new('Lucifer', 1, 3).result
Student.new('Orange', 5.4, 6.2).result
Student.new('Pitufo', 7, 6.5).result
Student.new('Rodolfo', 2.5, 1.3).result
Student.new('Juana', 7, 6.5).result
Student.new('Juanito', 7.9, 6.0).result

# Crear 10 objetos de la clase Student y utilizar los metodos creados para
# saber si los alumnos están aprobados o no y, finalmente, mostrar el total
# de alumnos creados.
Student.student_quantity
