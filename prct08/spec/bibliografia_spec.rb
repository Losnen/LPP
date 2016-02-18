require 'spec_helper'
require 'bibliografia/lista'
require 'bibliografia'
 

describe Biblio do
   
=begin   
   l1 = Biblio.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0","(The Facets of Ruby)","Pragmatic Bookshelf", "4 Edicion", "(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10:1937785491"])
  
   l3 = Biblio.new("JRR Tolkien","El Hobbit","ESDLA","Minotauro","3 Edicion","1937","ISBN-13: 978-1937785499")
   l4 = Biblio.new("JRR Tolkien","La comunidad del anillo","ESDLA","Minotauro","5 Edicion","1954","ISBN-13: 978-1937785499")
   l5 = Biblio.new("JRR Tolkien","Las dos Torres","ESDLA","Minotauro","5 Edicion","1955","ISBN-13: 978-1937785499")
=end

   describe Node do

      nodoa = Node.new(1, nil,nil)
      it "Existe un Nodo de la lista con sus datos y su siguiente" do
       
         expect(nodoa.value).to eq(1)
         expect(nodoa.next).to eq(nil)   
         expect(nodoa.prev).to eq(nil)  
         
      end
      
   end
   
    describe List do
   
      nodoa = Node.new(1,nil,nil)
      nodob = Node.new(2,nil,nil)
      nodoc = Node.new(3,nil,nil)
      nodod = Node.new(4,nil,nil)
      nodoe = Node.new(5,nil,nil)
      libros = [nodoc, nodod, nodoe]
      lista = List.new(nodoa)
      listb = List.new(nil)
      
      it"La lista esta vacía" do
         expect(listb.vacio()).to eq(true)
      end
    
      it "Existe una lista con su inicio y su final" do
         
         expect(lista.inicio).to eq(nodoa)
         expect(lista.inicio).to eq(nodoa)
         
      end
      
      
      it "Se puede insertar al inicio de la lista" do
         
         lista.insert_inicio(nodob)
         expect(lista.inicio).to eq(nodob)
         
      end
      
      it "Se puede extraer al inicio de la lista" do
         
         
         expect(lista.extraer_inicio()).to eq(nodob)
         
      end
      
      
      it "Se puede insertar al final de la lista" do
         
         lista.insert_end(nodob)
         expect(lista.final).to eq(nodob)
         
      end
      
      it "Se puede extraer al final de la lista" do
         
         
         expect(lista.extraer_final()).to eq(nodob)
         
      end
      
       it "Se puede insertar varios libros" do
         
         lista.insert_multiple(libros)
         expect(lista.inicio).to eq(libros[2])
         
      end
      
      it"La lista no esta vacía" do
         expect(lista.vacio()).to eq(false)
      end
      
   end
end

describe Biblio do
         
   context "Libros" do
            
      l1 = Libro.new("Harry Potter 1","JK Rowling","Octubre del 99","1 Edicion","ISBN-13: 978-1937785499", "HP","Salamandra")
            
      it "Comprobamos que el libro l1 pertenece a la clase Libro" do
               
         expect(l1.instance_of?Libro).to eq(true)
         
      end
            
      it "Comprobamos que el libro es heredado de Biblio" do
         
         expect(l1).to be_kind_of(Biblio)
      
      end
            
   end
         
   context "Articulo" do
      a1 = Articulo.new("La guerra anula la democracia","Arturo González","Noviembre de 2015","Opinion","1234-5678")
      it "Comprobamos que el articulo a1 pertenece a la clase Articulo" do
               
         expect(a1.instance_of?Articulo).to eq(true)
         
      end
            
      it "Comprobamos que el articulo es heredado de Biblio" do
         
         expect(a1).to be_kind_of(Biblio)
      
      end     
   end
   
end
         

