class Bibliografia

     attr_accessor  :autor, :titulo, :serie, :editorial, :no_edicion, :fecha, :isbn, :salida
     
     #Inicializador
     def initialize(x1,x2,x3,x4,x5,x6,x7)
     
          @titulo = x2
          @autor = x1
          @serie = x3
          @editorial = x4
          @no_edicion = x5
          @fecha = x6
          @isbn = x7
          
     end
     
     def imprimir()
        @salida = "AUTOR/ES: " + "#{@autor}" + "\n" + "TITULO: " + "#{@titulo}" + "\n" + "SERIE:: " + "#{@serie}" + "\n" + "EDITORIAL: " + "#{@editorial}" + "\n" + "Numero de Edicion: " + "#{@no_edicion}" + "\n" + "FECHA: " + "#{@fecha}" + "\n" + "ISBN: " + "#{@isbn}" 
        
         puts @salida
     end
     
     
end

 
   