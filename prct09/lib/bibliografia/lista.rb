   
    Node= Struct.new(:value, :next, :prev)

    class List

        include Enumerable
        attr_accessor :inicio, :final 
        
        def initialize()
            
            @inicio = nil
            @final = nil
            
        end
        
        def extraer_inicio()
            
            if (@inicio == nil)
                
                return nil
            else
                aux = @inicio
                @inicio = @inicio.next
                return aux
            end
        end
        
        def insert_inicio(x)
            
            nodo = Node.new(x,nil,nil)
            if(@inicio == nil)
                @inicio = nodo
                @final = nodo
            else
                aux = @inicio
                @inicio = nodo
                @inicio.next = aux
                aux.prev = @inicio
            end
        end
        def extraer_final()
            
            if (@final == nil)
                return nil
            else
                aux= @final
                @final= final.prev
                return aux
            end
        end
        
        def insert_end(x)
            
            nodo = Node.new(x,nil,nil)
            if(@final == nil)
                @final = nodo
                @inicio = nodo
            else
                aux = @final
                @final = nodo
                @final.prev = aux
                aux.next = @final
                
            end
        end
        
        
        def insert_multiple(nodos)
            
            nodos.each do |element|
                insert_inicio(element)
            end
            
        end
        
        def vacio()
           
           if(@inicio == nil)
               
               return true
               
           else
               
               return false
               
           end
            
        end
        
        def each
            
            if (@inicio == nil and @final == nil)
                
                yield nil
                
            elsif (@inicio == @final)
                
                yield @inicio.value
                
            else
                
                while(@inicio != nil)
                
                    yield @inicio.value
                    @inicio = @inicio.next
                    
                end                
            end
        end
    end