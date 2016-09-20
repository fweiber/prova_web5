require_relative '../test_helper'
require_relative '../../lib/prova_web5/velocity'

class Velocity2Test < Minitest::Test
  def test_convert_from_mps_to_mps_2
    assert_equal 2, Velocity.new(2, 'mps').to_mps
  end

  def test_convert_from_kph_to_mps_2
    assert_equal 0.555556, Velocity.new(2, 'kph').to_mps
  end

  def test_convert_from_mph_to_mps_2
    assert_equal 0.89408, Velocity.new(2, 'mph').to_mps
  end

  def test_convert_from_pps_to_mps_2
    assert_equal 0.6096, Velocity.new(2, 'pps').to_mps
  end

  def test_convert_from_knots_to_mps_2
    assert_equal 1.028888, Velocity.new(2, 'knots').to_mps
  end

  def test_convert_from_mps_to_kph_2
    assert_equal 7.2, Velocity.new(2, 'mps').to_kph
  end

  def test_convert_from_kph_to_kph_2
    assert_equal 2, Velocity.new(2, 'kph').to_kph
  end

  def test_convert_from_mph_to_kph_2
    assert_equal 3.21868, Velocity.new(2, 'mph').to_kph
  end

  def test_convert_from_pps_to_kph_2
    assert_equal 2.19456, Velocity.new(2, 'pps').to_kph
  end

  def test_convert_from_knots_to_kph_2
    assert_equal 3.704, Velocity.new(2, 'knots').to_kph
  end

  def test_convert_from_mps_to_mph_2
    assert_equal 4.47388, Velocity.new(2.0, 'mps').to_mph
  end

  def test_convert_from_mph_to_mph_2
    assert_equal 2.0, Velocity.new(2.0, 'mph').to_mph
  end

  def test_convert_from_kph_to_mph_2
    assert_equal 1.242742, Velocity.new(2.0, 'kph').to_mph
  end

  def test_convert_from_pps_to_mph_2
    assert_equal 1.363636, Velocity.new(2.0, 'pps').to_mph
  end

  def test_convert_from_knots_to_mph_2
    assert_equal 2.30156, Velocity.new(2.0, 'knots').to_mph
  end

  def test_convert_from_mps_to_pps_2
    assert_equal 6.56168, Velocity.new(2.0, 'mps').to_pps
  end

  def test_convert_from_mph_to_pps_2
    assert_equal 2.93334, Velocity.new(2.0, 'mph').to_pps
  end

  def test_convert_from_kph_to_pps_2
    assert_equal 1.822688, Velocity.new(2.0, 'kph').to_pps
  end

  def test_convert_from_pps_to_pps_2
    assert_equal 2.0, Velocity.new(2.0, 'pps').to_pps
  end

  def test_convert_from_knots_to_pps_2
    assert_equal 3.37562, Velocity.new(2.0, 'knots').to_pps
  end

  def test_convert_from_mps_to_knots_2
    assert_equal 3.88768, Velocity.new(2.0, 'mps').to_knots
  end

  def test_convert_from_mph_to_knots_2
    assert_equal 1.737952, Velocity.new(2.0, 'mph').to_knots
  end

  def test_convert_from_kph_to_knots_2
    assert_equal 1.079914, Velocity.new(2.0, 'kph').to_knots
  end

  def test_convert_from_pps_to_knots_2
    assert_equal 1.184968, Velocity.new(2.0, 'pps').to_knots
  end

  def test_convert_from_knots_to_knots_2
    assert_equal 2.0, Velocity.new(2.0, 'knots').to_knots
  end
end
