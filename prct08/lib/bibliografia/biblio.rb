class Biblio

     attr_accessor :titulo, :autor, :fecha 
     
     def initialize(x1,x2,x3)
     
          @titulo = x1
          @autor = x2
          @fecha = x3
     end
     
end

class Libro < Biblio
     
     attr_accessor :edicion, :isbn, :serie, :editorial
     
     def initialize(x1,x2,x3,x4,x5,x6,x7)
          
          @titulo = x1
          @autor = x2
          @fecha = x3
          @edicion = x4
          @isbn = x5
          @serie = x6
          @editorial = x7
          
     end
          
end

class Articulo < Biblio

     attr_accessor :tipo, :issn
     def initialize(x1,x2,x3,x4,x5)
     
          @titulo = x1
          @autor = x2
          @fecha = x3
          @tipo = x4
          @issn = x5
     end

end

