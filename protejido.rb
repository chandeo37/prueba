class Mamifero
    # codigo anterior removido para resumir
    
    def invocando_hablar
      hablar
    end
    
    protected
      def hablar
        puts "Soy un metodo protegido"
      end
  end
  class Humano < Mamifero
    # codigo anterior removido para resumir
    
    def explicito_hablar
      self.hablar
    end
    
    def implicito_hablar
      hablar
    end
  end
  mamifero = Mamifero.new
  mamifero.hablar # => protected method `hablar' called for #<Mamifero:0x007fa5438183d8> (NoMethodError)
  mamifero.invocando_speak # => Soy un metodo protegido
  persona = Humano.new
  persona.hablar # => protected method `hablar' called for #<Humano:0x007fedfe824710> (NoMethodError)
  persona.explicito_hablar # => Soy un metodo protegido
  persona.implicito_hablar # => Soy un metodo protegido