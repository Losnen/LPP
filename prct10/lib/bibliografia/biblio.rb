class Biblio

     include Comparable
     attr_accessor :titulo, :autor, :fecha 
     
     def initialize(x1,x2,x3)
     
          @titulo = x1
          @autor = x2
          @fecha = x3
          
     end
     
     def <=>(other)
          
          if(@autor != other.autor)
               @autor <=> other.autor
          elsif(@autor == other.autor)
               @fecha <=> other.fecha
          elsif(@fecha == other.fecha && @autor == other.autor)
               @titulo <=> other.titulo
          end
     end
     
     
     def to_s()
        @salida = " AUTOR/ES: " + "#{@autor}" + " TITULO: " + "#{@titulo}" + " FECHA: " + "#{@fecha}" 
     end
     
     
end

class Libro < Biblio
     
     attr_accessor :edicion, :volumen, :lugar
     
     def initialize(x1,x2,x3,x4,x5,x6)
          
          @titulo = x1
          @autor = x2
          @fecha = x3
          @edicion = x4
          @volumen = x5
          @lugar = x6
     end
     
     def to_s()
        @salida = "AUTOR/ES: " + "#{@autor}"  + " TITULO: " + "#{@titulo}"  + " FECHA: " + "#{@fecha}" +  " EDICION: " + "#{@edicion}" + " VOLUMEN: " + "#{@volumen}" + " LUGAR: " + "#{@lugar}"
     end
          
end

class Articulo < Biblio

     attr_accessor :editor, :paginas, :obra
     def initialize(x1,x2,x3,x4,x5,x6)
     
          @titulo = x1
          @autor = x2
          @fecha = x3   
          @editor = x4
          @paginas = x5
          @obra = x6 
     end
     
     def to_s()
        @salida = "AUTOR/ES: " + "#{@autor}" +  " TITULO: " + "#{@titulo}" +  " FECHA: " + "#{@fecha}" +  " EDITOR: " + "#{@editor}" +  " PAGINAS: " + "#{@paginas}"+  " OBRA: " + "#{@obra}"
     end
     
end

