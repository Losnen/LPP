require 'spec_helper'
require 'bibliografia/lista'
require 'bibliografia'


describe Biblio do
   
   
   l1 = Biblio.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0","(The Facets of Ruby)","Pragmatic Bookshelf", "4 Edicion", "(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10:1937785491"])
   l2 = Biblio.new("JK Rowling","Harry Potter 1","HP","Salamandra","1 Edicion","Octubre del 99","ISBN-13: 978-1937785499")
   l3 = Biblio.new("JRR Tolkien","El Hobbit","ESDLA","Minotauro","3 Edicion","1937","ISBN-13: 978-1937785499")
   l4 = Biblio.new("JRR Tolkien","La comunidad del anillo","ESDLA","Minotauro","5 Edicion","1954","ISBN-13: 978-1937785499")
   l5 = Biblio.new("JRR Tolkien","Las dos Torres","ESDLA","Minotauro","5 Edicion","1955","ISBN-13: 978-1937785499")
   describe Node do
   
      nodoa = Node.new(l1, nil)
      it "Existe un Nodo de la lista con sus datos y su siguiente" do
       
         expect(nodoa.value).to eq(l1)
         expect(nodoa.next).to eq(nil)   
         
      end
   end
   
   describe List do
   
      nodoa = Node.new(l1,nil)
      nodob = Node.new(l2,nil)
      nodoc = Node.new(l3,nil)
      nodod = Node.new(l4,nil)
      nodoe = Node.new(l5,nil)
      libros = [nodoc, nodod, nodoe]
      lista = List.new(nodoa)
      listb = List.new(nil)
      
      
      
      it"La lista esta vacía" do
         expect(listb.vacio()).to eq(true)
      end
      
    
      it "Existe una lista con su cabeza" do
         
         expect(lista.inicio).to eq(nodoa)
         
      end
         
      it "Se puede insertar en la lista" do
         
         lista.insert_single(nodob)
         expect(lista.inicio).to eq(nodob)
         
      end
      
      it "Se puede extraer de la lista" do
         
         
         expect(lista.extract_beg()).to eq(nodob)
         
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
