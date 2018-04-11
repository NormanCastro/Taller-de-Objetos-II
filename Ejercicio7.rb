1. Crear la clase punto, un punto tiene una posición x y una posición y .
2. Crear métodos getter y setter para los atributos del punto.
3. Crear 10 puntos al azar.



#---------------------
class Punto

	attr_accessor :posx, :posy

	def initialize(x,y)
		@posx = x
		@posy = y
	end

end

puntos = []
10.times do |i|
	puntos.push(Punto.new(rand(0..100), rand(0..200)))
end	