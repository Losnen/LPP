require 'lib/racional'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  
  def setup
    @origen = Racional.new(1,2)
    @unidad = Racional.new(2,3)
  end
  
  def test_simple
    assert_equal("(1/2)", @origen.to_s)
    assert_equal("(4/3)", (@unidad*2).to_s)
    assert_equal("(-2/3)", (-@unidad).to_s)
    assert_equal([7,6], (@origen + @unidad))
  end
  
#  def test_type_check
#    assert_raise(RuntimeError) {Racional.new(1,1)}
#  end
  
  def test_failure
    assert_equal("(5/2)", (@origen * 5).to_s, "Producto escalar")
  end
  
end