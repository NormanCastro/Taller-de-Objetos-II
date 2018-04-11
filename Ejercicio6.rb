class Student
  attr_reader :notas, :name
  def initialize(name, notas)
      @name = name
      @notas = notas
  end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
puts "# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.***************************************************************"
objetos_alumnos  = []
objetos_alumnos = nombres.map{ |nom| Student.new(nom,[]) }
print objetos_alumnos
puts "\n\n"

# 2. Modificar el objeto para que pueda recibir una nota del alumno.
puts "# 2. Modificar el objeto para que pueda recibir una nota del alumno.***************************************************************"
objetos_alumnos  = []
notas = [1,2,3,4,5,6,7,8,10]
objetos_alumnos = nombres.map{ |nom| Student.new(nom,notas.sample(10))}
print objetos_alumnos
puts "\n\n"

# 3. Agregar un getter para la nota
puts "# 3. Agregar un getter para la nota***************************************************************"
objetos_alumnos  = []
objetos_alumnos = nombres.map{ |nom| Student.new(nom,notas.sample(10))}
print objetos_alumnos
puts "\n\n"
print objetos_alumnos[0].notas   #Se agrega en la clase el getter  attr_reader
puts "\n\n"

# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
puts "# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.***************************************************************"
objetos_alumnos  = []
notas_en_aumento = 0
objetos_alumnos = nombres.map{ |nom| notas_en_aumento+=1 ; Student.new(nom,notas_en_aumento) }
print objetos_alumnos
puts "\n\n"


# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.
puts "# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.***********************************"
objetos_alumnos  = []
notas = [1,2,3,4,5,6,7,8,10]
objetos_alumnos = nombres.map{ |nom| Student.new(nom,notas.sample(10))}
objetos_alumnos.each { |alum|  puts "El alumno #{alum.name} tiene las siguientes notas #{alum.notas}"}
puts "\n\n"