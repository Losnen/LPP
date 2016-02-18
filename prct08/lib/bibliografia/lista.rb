   
    Node= Struct.new(:value, :next, :prev)

    class List

        attr_accessor :inicio, :final 
        def initialize(node)
            @inicio = node
            @final = node
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
        
        def insert_inicio(nodo)
            if(@inicio == nil)
                @inicio = nodo
                @final = nodo
            else
                aux = @inicio.next
                @inicio = nodo
                @inicio.next = aux
                @inicio.prev = aux
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
        
        def insert_end(nodo)
            
            if(@final == nil)
                @final = nodo
                @inicio = nodo
            else
                aux = @final.next
                @final = nodo
                @final.prev = aux
                @final.next = nil
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
    end