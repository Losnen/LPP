require 'spec_helper'
require 'bibliografia/lista'
require 'bibliografia'
 


  
  describe List do
      context "Expectativas de Enumerable" do
         before :each do
            @l1 = Libro.new("Harry Potter 1","JK Rowling","Octubre del 99","1 Edicion","ISBN-13: 978-1937785499", "HP","Salamandra")
            @l2 = Libro.new("El Hobbit","JRR Tolkien","1937","1 Edicion","ISBN-13: 978-1937785499", "ESDLA","Salamandra")
            @l3 = Libro.new("La comunidad del anillo","JRR Tolkien","1954","1 Edicion","ISBN-13: 978-1937785499", "ESDLA","Salamandra")
            @l4 = Libro.new("Las dos torres","JRR Tolkien","1955","1 Edicion","ISBN-13: 978-1937785499", "ESDLA","Salamandra")
            @lista = List.new()
            @listb = List.new()
            @lista.insert_inicio(@l1)
            @lista.insert_inicio(@l3)
            @lista.insert_inicio(@l4)
            @lista.insert_inicio(@l2)

            
            
         end
         
         it "Comprobando el metodo all?" do
            expect(@lista.all?).to eq(true)
            expect(@listb.all?).to eq(false)
         end 
         
         it "Comprobando el metodo any?" do
            expect(@lista.any?).to eq(true)
            expect(@listb.any?).to eq(false)
         end
         
         it "Comprobrando el metodo count" do 
            expect(@lista.count).to eq(4)
         end
   
         it "Comprobrando max" do
            expect(@lista.max).to eq(@l4)
         end
         
         it "Comprobrando min" do
            expect(@lista.min).to eq(@l2)
         end
         
         it "Comprobrando sort" do
            expect(@lista.sort).to eq([@l2,@l1,@l3,@l4])
         end
         
          it "Comprobrando drop" do
            expect(@lista.drop(1)).to eq([@l4,@l3,@l1])
         end
         
         it "Comprobrando first" do
            expect(@lista.first(1)).to eq([@l2])
         end
         
         it "Comprobando el metodo detect y find" do
            expect(@lista.detect {|i| i == @l2}).to eq(@l2)
            expect(@lista.find {|i| i == @l1}).to eq(@l1)
         end
         
      end
   
   end
   
describe Biblio do 
   
   context "Expectativas de Comparable" do
      before :each do
         @l1 = Libro.new("Harry Potter 1","JK Rowling","Octubre del 99","1 Edicion","ISBN-13: 978-1937785499", "HP","Salamandra")
         @l2 = Libro.new("El Hobbit","JRR Tolkien","1937","1 Edicion","ISBN-13: 978-1937785499", "HP","Salamandra")
         
      end
       
      it " l1 > l2" do
         expect(@l1 > @l2).to eq(true)
      end
      
      it "l1 >= l2" do
         expect(@l1 >= @l2).to eq(true)
      end
      
      it "l2 < l1" do
         expect(@l2 < @l1).to eq(true)
      end
      
      it "l2 <= l1" do
         expect(@l2 <= @l1).to eq(true)
      end
      
      it "l1 == l1" do
         expect(@l1 == @l1).to eq(true)
      end

      it "l1 != l2" do
         expect(@l1 == @l2).to eq(false)
      end
      
      it "a1 != l1" do
         expect(@a1 == @l1).to eq(false)
    end
      
   end
    
end


         

