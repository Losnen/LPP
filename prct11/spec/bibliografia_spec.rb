#!/usr/bin/env ruby
# encoding: utf-8
require 'spec_helper'
require 'bibliografia/lista'
require 'bibliografia'
 


  
  describe Biblio do
     
       
         l1 = Libro.new("Harry Potter 1") do
            
            author "Rowling, J. K." 
            date "1999"
            edition "1 Edición"
            volume "1"
            site "España"
      
         end
        
         l2 = Libro.new("El Hobbit") do
            
            author "Tolkien, J. R. R" 
            date "1937"
            edition "1 Edición"
            volume "1"
            site "España" 
               
         end
            
         l3 = Libro.new("La comunidad del anillo") do
               
            author "Tolkien, J. R. R" 
            date "1954"
            edition "1 Edición"
            volume "1"
            site "España" 
               
         end
            
         l4 = Libro.new("Las dos torres") do
               
            author "Tolkien, J. R. R" 
            date "1954"
            edition "1 Edición"
            volume "2"
            site "España" 
               
         end
        
         a1 = Articulo.new("La Guerra Anula La Democracia") do
            
            author "González A"
            edit "El Pais"
            date "2015"
            pag "5"
            obr "Opinion"
         end
            
         a2 = Articulo.new("El Conflicto De La Cultura") do
         
            author "Perez G"
            edit "El Pais"
            date "2015"
            pag "2"
            obr "Columna"
         end
   
      
      la = List.new()
      la.insert_inicio(l1)
      la.insert_inicio(l2)
      la.insert_inicio(l3)
      la.insert_inicio(l4)
      la.insert_inicio(a1)
      la.insert_inicio(a2)
      output = ["El Conflicto De La Cultura Perez G (2015) (El Pais) (2) Columna ", "La Guerra Anula La Democracia González A (2015) (El Pais) (5) Opinion ", "Las dos torres Tolkien, J. R. R (1954) (1 Edición) (2) España ", "La comunidad del anillo Tolkien, J. R. R (1954) (1 Edición) (1) España ", "El Hobbit Tolkien, J. R. R (1937) (1 Edición) (1) España ", "Harry Potter 1 Rowling, J. K. (1999) (1 Edición) (1) España "] 
      

      it "La lista se imprime en formato APA" do
         expect(la.to_s).to eq(output)
      end
      
   end
   
   
   