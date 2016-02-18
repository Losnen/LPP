   
    Node= Struct.new(:value, :next)

    class List

        attr_reader :inicio
        def initialize(node)
            @inicio= node
        end
        
        def extract_beg()
            
            if (@inicio == nil)
                return nil
            else
                aux= @inicio
                @inicio= @inicio.next
                return aux
            end
        end
        
        def insert_single(nodo)
            if(@inicio == nil)
                @inicio= nodo
            else
                aux= @inicio.next
                @inicio= nodo
                @inicio.next= aux
            end
        end
        
        def insert_multiple(nodos)
            nodos.each do |element|
                insert_single(element)
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