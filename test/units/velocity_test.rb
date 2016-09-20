require_relative '../test_helper'
require_relative '../../lib/prova_web5/velocity'

class VelocityTest < Minitest::Test
  def test_convert_from_mps_to_mps
    assert_equal 1, Velocity.new(1, 'mps').to_mps
  end

  def test_convert_from_kph_to_mps
    assert_equal 0.277778, Velocity.new(1, 'kph').to_mps
  end

  def test_convert_from_mph_to_mps
    assert_equal 0.44704, Velocity.new(1, 'mph').to_mps
  end

  def test_convert_from_pps_to_mps
    assert_equal 0.3048, Velocity.new(1, 'pps').to_mps
  end

  def test_convert_from_knots_to_mps
    assert_equal 0.514444, Velocity.new(1, 'knots').to_mps
  end

  def test_convert_from_mps_to_kph
    assert_equal 3.6, Velocity.new(1, 'mps').to_kph
  end

  def test_convert_from_kph_to_kph
    assert_equal 1, Velocity.new(1, 'kph').to_kph
  end

  def test_convert_from_mph_to_kph
    assert_equal 1.60934, Velocity.new(1, 'mph').to_kph
  end

  def test_convert_from_pps_to_kph
    assert_equal 1.09728, Velocity.new(1, 'pps').to_kph
  end

  def test_convert_from_knots_to_kph
    assert_equal 1.852, Velocity.new(1, 'knots').to_kph
  end

  def test_convert_from_mps_to_mph
    assert_equal 2.23694, Velocity.new(1.0, 'mps').to_mph
  end

  def test_convert_from_mph_to_mph
    assert_equal 1.0, Velocity.new(1.0, 'mph').to_mph
  end

  def test_convert_from_kph_to_mph
    assert_equal 0.621371, Velocity.new(1.0, 'kph').to_mph
  end

  def test_convert_from_pps_to_mph
    assert_equal 0.681818, Velocity.new(1.0, 'pps').to_mph
  end

  def test_convert_from_knots_to_mph
    assert_equal 1.15078, Velocity.new(1.0, 'knots').to_mph
  end

  def test_convert_from_mps_to_pps
    assert_equal 3.28084, Velocity.new(1.0, 'mps').to_pps
  end

  def test_convert_from_mph_to_pps
    assert_equal 1.46667, Velocity.new(1.0, 'mph').to_pps
  end

  def test_convert_from_kph_to_pps
    assert_equal 0.911344, Velocity.new(1.0, 'kph').to_pps
  end

  def test_convert_from_pps_to_pps
    assert_equal 1.0, Velocity.new(1.0, 'pps').to_pps
  end

  def test_convert_from_knots_to_pps
    assert_equal 1.68781, Velocity.new(1.0, 'knots').to_pps
  end

  def test_convert_from_mps_to_knots
    assert_equal 1.94384, Velocity.new(1.0, 'mps').to_knots
  end

  def test_convert_from_mph_to_knots
    assert_equal 0.868976, Velocity.new(1.0, 'mph').to_knots
  end

  def test_convert_from_kph_to_knots
    assert_equal 0.539957, Velocity.new(1.0, 'kph').to_knots
  end

  def test_convert_from_pps_to_knots
    assert_equal 0.592484, Velocity.new(1.0, 'pps').to_knots
  end

  def test_convert_from_knots_to_knots
    assert_equal 1.0, Velocity.new(1.0, 'knots').to_knots
  end
end
