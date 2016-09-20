require_relative '../test_helper'
require_relative '../../lib/prova_web5/weight'

class Weight3Test < Minitest::Test
  def test_convert_from_g_to_ct
    assert_equal 5, Weight.new(1.0, 'g').to_ct
  end

  def test_convert_from_oz_to_ct
    assert_equal 141.7475, Weight.new(1.0, 'oz').to_ct
  end

  def test_convert_from_kg_to_ct
    assert_equal 5_000, Weight.new(1.0, 'kg').to_ct
  end

  def test_convert_from_g_to_ct_2
    assert_equal 10, Weight.new(2.0, 'g').to_ct
  end

  def test_convert_from_oz_to_ct_2
    assert_equal 283.495, Weight.new(2.0, 'oz').to_ct
  end

  def test_convert_from_kg_to_ct_2
    assert_equal 10_000, Weight.new(2.0, 'kg').to_ct
  end
end
