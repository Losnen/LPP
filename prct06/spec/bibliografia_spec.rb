require "bibliografia/biblio.rb"
require "spec_helper.rb" 

describe Bibliografia do


   before :each do
      @biblio = Bibliografia.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0","(The Facets of Ruby)","Pragmatic Bookshelf", "4 Edicion", "(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10:1937785491"])
   end
   
   describe "Libro" do

      it "El nombre del autor es incorrecto" do
         @biblio.autor.should eq(["Dave Thomas","Andy Hunt", "Chad Fowler"])
      end
   end
   
   
   describe "Libro" do

      it "El titulo es incorrecto" do
         @biblio.titulo.should eq("Programming Ruby 1.9 & 2.0")
      end
   end
   
   describe "Libro" do

      it "La serie es incorrecta" do
         @biblio.serie.should eq("(The Facets of Ruby)")
      end
   end
   
   describe "Libro" do

      it "La editorial es incorrecta" do
         @biblio.editorial.should eq("Pragmatic Bookshelf")
      end
   end

   describe "Libro" do

      it "El numero de edicion es incorrecto" do
         @biblio.no_edicion.should eq("4 Edicion")
      end
   end
   
      describe "Libro" do

      it "La fecha es incorrecta" do
         @biblio.fecha.should eq("(July 7, 2013)")
      end
   end
   
     describe "Libro" do

      it "El ISBN es incorrecto" do
         @biblio.isbn.should eq(["ISBN-13: 978-1937785499", "ISBN-10:1937785491"])
      end
      
   end
   
end