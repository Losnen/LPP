require "/home/ubuntu/workspace/lib/gcd"

class Racional
    
    attr_reader :d, :n
    #Inicialización del objeto
    def initialize(n,d)
        
        @n,@d = reducir(n,d) 
    end
    
    #Metodo que devuelve una cadena con la representación
    def to_s
        "(#{@n}/#{@d})"
    end
	
	#Funcion para reducir el número.
	def reducir(n,d)
	    aux = gcd(n,d)
	    n = n / aux
	    d = d / aux
	    
	    return n,d
	end
	
	#Función que hace el MCM
	def mcm(a,b)
	    a,b =a.abs, b.abs
        (a / gcd(a,b) * b)
	end
    
    #Funcion que realiza la suma de dos números.
    def suma(n,d)
        
        if(@d ==d)
           @n += n
           
           @n,@d = reducir(@n,@d)
           
        else
            new_d = mcm(@d,d)
            new_n = ((new_d / @d) *@n ) + ((new_d / d) *n )    
            
            @n,@d = reducir(new_n,new_d)
        end
        
        return @n,@d
    end

    #Función que realiza la multiplicación de dos números racionales
    def multiplicar(n,d)
        n,d = reducir(n,d)
        
        @n *=n
        @d *=d
        
        reducir(@n,@d)
        return @n,@d
    end
    
     #Funcion que realiza la resta de dos números.
    def resta(n,d)
        
        if(@d ==d)
           @n -= n
           
           @n,@d = reducir(@n,@d)
           
        else
            new_d = mcm(@d,d)
            new_n = ((new_d / @d) *@n ) - ((new_d / d) *n )    
            
            @n,@d = reducir(new_n,new_d)
        end
        
        return @n,@d
    end
    
      #Función que realiza la división de dos números racionales
    def dividir(n,d)
        n,d = reducir(n,d)
        
        @n *=d
        @d *=n
        
        reducir(@n,@d)
        return @n,@d
    end
    
    def *(value)
        Racional.new(@n * value,@d)
    end
    
    def -@
        Racional.new(@n * -1,@d)
    end
    
    def +(other)
        Racional.new(@n,@d).suma(other.n,other.d) 
    end
    
end
