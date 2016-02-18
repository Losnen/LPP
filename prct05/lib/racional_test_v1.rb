require './racional'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def test_simple
    assert_equal("(1/2)", Racional.new(2,4).to_s)
  end

  def test_multi
    assert_equal([1,8], Racional.new(1,2).multiplicar(1,4)) 
  end
  
  def test_suma
    assert_equal([7,12], Racional.new(1,3).suma(1,4)) 
    assert_equal([1,1], Racional.new(1,2).suma(1,2)) 
  end

  def test_resta
    assert_equal([1,3], Racional.new(2,3).resta(1,3)) 
    assert_equal([7,6], Racional.new(5,3).resta(1,2)) 
  end
  
  def test_divi
    assert_equal([4,2], Racional.new(1,2).dividir(1,4)) 
  end
  

end