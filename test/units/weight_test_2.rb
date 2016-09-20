require_relative '../test_helper'
require_relative '../../lib/prova_web5/weight'

class Weight2Test < Minitest::Test
  def test_convert_from_ct_to_g_2
    assert_equal 0.4, Weight.new(2.0, 'ct').to_g
  end

  def test_convert_from_t_to_g_2
    assert_equal 2_000_000.0, Weight.new(2.0, 't').to_g
  end

  def test_convert_from_lb_to_g_2
    assert_equal 907.184, Weight.new(2.0, 'lb').to_g
  end

  def test_convert_from_g_to_g_2
    assert_equal 2.0, Weight.new(2.0, 'g').to_g
  end

  def test_convert_from_oz_to_g_2
    assert_equal 56.699, Weight.new(2.0, 'oz').to_g
  end

  def test_convert_from_kg_to_g_2
    assert_equal 2000.0, Weight.new(2.0, 'kg').to_g
  end

  def test_convert_from_ct_to_kg_2
    assert_equal 4.0E-4, Weight.new(2.0, 'ct').to_kg
  end

  def test_convert_from_t_to_kg_2
    assert_equal 2000.0, Weight.new(2.0, 't').to_kg
  end

  def test_convert_from_lb_to_kg_2
    assert_equal 0.907184, Weight.new(2.0, 'lb').to_kg
  end

  def test_convert_from_g_to_kg_2
    assert_equal 0.002, Weight.new(2.0, 'g').to_kg
  end

  def test_convert_from_oz_to_kg_2
    assert_equal 0.056699, Weight.new(2.0, 'oz').to_kg
  end

  def test_convert_from_kg_to_kg_2
    assert_equal 2.0, Weight.new(2.0, 'kg').to_kg
  end

  def test_convert_from_ct_to_t_2
    assert_equal 0.0000004, Weight.new(2.0, 'ct').to_t
  end

  def test_convert_from_t_to_t_2
    assert_equal 2.0, Weight.new(2.0, 't').to_t
  end

  def test_convert_from_lb_to_t_2
    assert_equal 0.000907184, Weight.new(2.0, 'lb').to_t
  end

  def test_convert_from_g_to_t_2
    assert_equal 0.000002, Weight.new(2.0, 'g').to_t
  end

  def test_convert_from_oz_to_t_2
    assert_equal 0.000056699, Weight.new(2.0, 'oz').to_t
  end

  def test_convert_from_kg_to_t_2
    assert_equal 0.002, Weight.new(2.0, 'kg').to_t
  end

  def test_convert_from_ct_to_lb_2
    assert_equal 0.0008818480000000001, Weight.new(2.0, 'ct').to_lb
  end

  def test_convert_from_t_to_lb_2
    assert_equal 4409.24, Weight.new(2.0, 't').to_lb
  end

  def test_convert_from_lb_to_lb_2
    assert_equal 2.0, Weight.new(2.0, 'lb').to_lb
  end

  def test_convert_from_g_to_lb_2
    assert_equal 0.00440924, Weight.new(2.0, 'g').to_lb
  end

  def test_convert_from_oz_to_lb_2
    assert_equal 0.12499974938, Weight.new(2.0, 'oz').to_lb
  end

  def test_convert_from_kg_to_lb_2
    assert_equal 4.40924, Weight.new(2.0, 'kg').to_lb
  end

  def test_convert_from_ct_to_oz_2
    assert_equal 0.0141096, Weight.new(2.0, 'ct').to_oz
  end

  def test_convert_from_t_to_oz_2
    assert_equal 70_548.0, Weight.new(2.0, 't').to_oz
  end

  def test_convert_from_lb_to_oz_2
    assert_equal 32.000008416, Weight.new(2.0, 'lb').to_oz
  end

  def test_convert_from_g_to_oz_2
    assert_equal 0.070548, Weight.new(2.0, 'g').to_oz
  end

  def test_convert_from_oz_to_oz_2
    assert_equal 2.0, Weight.new(2.0, 'oz').to_oz
  end

  def test_convert_from_kg_to_oz_2
    assert_equal 70.548, Weight.new(2.0, 'kg').to_oz
  end

  def test_convert_from_ct_to_ct_2
    assert_equal 2.0, Weight.new(2.0, 'ct').to_ct
  end

  def test_convert_from_t_to_ct_2
    assert_equal 10_000_000.0, Weight.new(2.0, 't').to_ct
  end

  def test_convert_from_lb_to_ct_2
    assert_equal 4535.92, Weight.new(2.0, 'lb').to_ct
  end
end
