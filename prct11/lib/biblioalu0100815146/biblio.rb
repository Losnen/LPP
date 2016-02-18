class Biblio

     include Comparable
     attr_accessor :titulo, :autor, :fecha 
     
     def initialize(titulo, &block)
     
          self.titulo = titulo
          self.autor = []
          self.fecha = []
     
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
     end
     
     def date(name, options = {})
          date = name
          
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          author << " (#{options[:amount]})" if options[:amount]
          autor << author
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
     
     def initialize(titulo,&block)
         
          self.titulo = titulo
          self.autor = []
          self.fecha = []
          self.edicion = []
          self.volumen = []
          self.lugar = []
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          author << " (#{options[:amount]})" if options[:amount]
          autor << author
     end
     
     def edition(name, options = {})
          edition = name
          edicion << edition
     end
     def volume(name, options = {})
          volume = name
          volumen << volume
     end
     def site(name, options = {})
          site = name
          lugar << site
     end
     
     def to_s()
          
          output = titulo
          output << " #{autor.join(', ')} "
          output << "(#{fecha.join(', ')}) "
          output << "(#{edicion.join(', ')}) "
          output << "(#{volumen.join(', ')}) "
          output << "#{lugar.join(', ')} "

          output
     end

         
end
   
   


class Articulo < Biblio

     attr_accessor :editor, :paginas, :obra
     def initialize(titulo,&block)
     
          self.titulo = titulo
          self.autor = []
          self.fecha = []   
          self.editor = []
          self.paginas = []
          self.obra = []
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
          
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          author << " (#{options[:amount]})" if options[:amount]
          autor << author
     end
     
     def edit(name, options = {})
          edit = name
          editor << edit
     end
     def pag(name, options = {})
          pag = name
          paginas << pag
     end
     def obr(name, options = {})
          obr = name
          obra << obr
     end
     
     def to_s()
          
          output = titulo
          output << " #{autor.join(', ')} "
          output << "(#{fecha.join(', ')}) "
          output << "(#{editor.join(', ')}) "
          output << "(#{paginas.join(', ')}) "
          output << "#{obra.join(', ')} "

          output
     end
     
end

