class Usuario
    attr_accessor :nombre, :apellido
  end
  kobe = Usuario.new
  puts kobe.nombre = "Kobe"
  puts kobe.apellido = "Bryant"


  class User
    attr_accessor :first_name, :last_name
    def initialize(f_name, l_name)
      @first_name = f_name
      @last_name = l_name
    end
  end
  steph = User.new("Stephen", "Curry")

    puts steph

    class MiClase
        def algun_metodo
          puts "Este es un metodo de instancia"
        end
      end
      objeto = MiClase.new
      objeto.algun_metodo  # => "Este es un metodo de instancia"

      class Usuario
        # Crear metodos de instancia que obtienen y establecen los atributos nombre y apellido
        attr_accessor :nombre, :apellido
        
        def initialize(f_nombre, l_apellido)
          @nombre = f_nombre
          @apellido = l_apellido
        end
        
        def nombre_completo
          puts "Yo soy #{@nombre} #{@apellido}"
        end
        
        def saludar
          puts "¡Hola!"
        end
      end
      u = Usuario.new("John", "Doe")
      u.nombre_completo # => "Yo soy John Doe"
      u.saludar # => "¡Hola!"