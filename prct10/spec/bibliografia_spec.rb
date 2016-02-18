#!/usr/bin/env ruby
# encoding: utf-8
require 'spec_helper'
require 'bibliografia/lista'
require 'bibliografia'
 


  
  describe Biblio do
     
     context "Pruebas libros" do
         before :each do
            @l1 = Libro.new("Harry Potter 1","Rowling, J. K.","(1999)","(1 Edicion)","(1)","España")
            @l2 = Libro.new("El Hobbit","Tolkien, J. R. R.","(1937)","(1 Edicion)", "(1)","España")
            @l3 = Libro.new("La comunidad del anillo","Tolkien, J. R. R.","(1954)","1 Edicion","(1)","España")
            @l4 = Libro.new("Las dos torres","Tolkien, J. R. R.","(1954)","(1 Edicion)","(2)","España")
            
            @lista = List.new()
            @listb = List.new()
            @listc = List.new()
            @lista.insert_inicio(@l2)
            @lista.insert_inicio(@l1)
            @listb.insert_inicio(@l4)
            @listb.insert_inicio(@l3)
            @listc.insert_inicio(@l3)
            @listc.insert_inicio(@l2)
         end
         
         
         it "Autores distinto, ordenndo por autores" do
            expect(@lista.sort).to eq([@l1,@l2])
         end
         
         it "Autores iguales, ordenando oor fechas" do
            expect(@listc.sort).to eq([@l2,@l3])
         end
         
         it "Autores iguales, fechas iguales, ordenando por título" do
            expect(@listb.sort).to eq([@l3,@l4])
         end
         
         it "Se usa el APA" do
            expect(@l1.to_s).to eq("AUTOR/ES: Rowling, J. K. TITULO: Harry Potter 1 FECHA: (1999) EDICION: (1 Edicion) VOLUMEN: (1) LUGAR: España")
            expect(@l2.to_s).to eq("AUTOR/ES: Tolkien, J. R. R. TITULO: El Hobbit FECHA: (1937) EDICION: (1 Edicion) VOLUMEN: (1) LUGAR: España")
            expect(@l3.to_s).to eq("AUTOR/ES: Tolkien, J. R. R. TITULO: La comunidad del anillo FECHA: (1954) EDICION: 1 Edicion VOLUMEN: (1) LUGAR: España")
            expect(@l4.to_s).to eq("AUTOR/ES: Tolkien, J. R. R. TITULO: Las dos torres FECHA: (1954) EDICION: (1 Edicion) VOLUMEN: (2) LUGAR: España")
         
         end
         
      end
      
      context "Pruebas Articulos" do
      
         before :each do
            @a1 = Articulo.new("La Guerra Anula La Democracia","González A","(El Pais)","(2015)","(5)","Opinion")
            @a2 = Articulo.new("El Conflicto De La Cultura","Perez G","(El Pais)","(2015)","(2)","Columna")
            @a3 = Articulo.new("Accidente De Coche En La A10","González A","(El Pais)","(2014)","(1)","Suceso")
            @a4 = Articulo.new("Redes Sociales","Gonzalez A","(El Pais)","(2015)","(8)","Opinion")

            @lista = List.new()
            @listb = List.new()
            @listc = List.new()
            @lista.insert_inicio(@a1)
            @lista.insert_inicio(@a2)
            @listb.insert_inicio(@a1)
            @listb.insert_inicio(@a4)
            @listc.insert_inicio(@a1)
            @listc.insert_inicio(@a3)
         end
         
         it "Autores distintos" do
            expect(@lista.sort).to eq([@a1,@a2])
         end
         
         it "Autores iguales, ordenando por fechas" do
            expect(@listc.sort).to eq([@a1,@a3])
         end
         
         it "Autores iguales, fechas iguales, ordenando por título" do
            expect(@listb.sort).to eq([@a4,@a3])
         end
         
         it "Se usa el APA" do
            expect(@a1.to_s).to eq("AUTOR/ES: González A TITULO: La Guerra Anula La Democracia FECHA: (El Pais) EDITOR: (2015) PAGINAS: (5) OBRA: Opinion")
            expect(@a2.to_s).to eq("AUTOR/ES: Perez G TITULO: El Conflicto De La Cultura FECHA: (El Pais) EDITOR: (2015) PAGINAS: (2) OBRA: Columna")
            expect(@a3.to_s).to eq("AUTOR/ES: González A TITULO: Accidente De Coche En La A10 FECHA: (El Pais) EDITOR: (2014) PAGINAS: (1) OBRA: Suceso")
            expect(@a4.to_s).to eq("AUTOR/ES: Gonzalez A TITULO: Redes Sociales FECHA: (El Pais) EDITOR: (2015) PAGINAS: (8) OBRA: Opinion")
         
         end
         
      end
         
   
   end



      