require_relative '../test_helper'
require_relative '../../app'

class VelocityTest < Minitest::Test
  def app
    App
  end

  def test_get_home
    get '/'
    assert_equal 200, last_response.status
    assert_equal "Hello, world! This is temp app.\n", last_response.body
  end

  def test_get_mps_to_mps
    get '/velocity/mps/1/to_mps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end

  def test_get_mph_to_mps
    get '/velocity/mph/1/to_mps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.44704}', last_response.body
  end

  def test_get_kph_to_mps
    get '/velocity/kph/1/to_mps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.277778}', last_response.body
  end

  def test_get_pps_to_mps
    get '/velocity/pps/1/to_mps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.3048}', last_response.body
  end

  def test_get_knots_to_mps
    get '/velocity/knots/1/to_mps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.514444}', last_response.body
  end

  def test_get_mps_to_mph
    get '/velocity/mps/1/to_mph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":2.23694}', last_response.body
  end

  def test_get_mph_to_mph
    get '/velocity/mph/1/to_mph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end

  def test_get_kph_to_mph
    get '/velocity/kph/1/to_mph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.621371}', last_response.body
  end

  def test_get_pps_to_mph
    get '/velocity/pps/1/to_mph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.681818}', last_response.body
  end

  def test_get_knots_to_mph
    get '/velocity/knots/1/to_mph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.15078}', last_response.body
  end

  def test_get_mps_to_kph
    get '/velocity/mps/1/to_kph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":3.6}', last_response.body
  end

  def test_get_mph_to_kph
    get '/velocity/mph/1/to_kph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.60934}', last_response.body
  end

  def test_get_kph_to_kph
    get '/velocity/kph/1/to_kph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end

  def test_get_pps_to_kph
    get '/velocity/pps/1/to_kph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.09728}', last_response.body
  end

  def test_get_knots_to_kph
    get '/velocity/knots/1/to_kph'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.852}', last_response.body
  end

  def test_get_mps_to_pps
    get '/velocity/mps/1/to_pps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":3.28084}', last_response.body
  end

  def test_get_mph_to_pps
    get '/velocity/mph/1/to_pps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.46667}', last_response.body
  end

  def test_get_kph_to_pps
    get '/velocity/kph/1/to_pps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.911344}', last_response.body
  end
end
