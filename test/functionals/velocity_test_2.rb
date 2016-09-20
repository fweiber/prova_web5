require_relative '../test_helper'
require_relative '../../app'

class Velocity2Test < Minitest::Test
  def app
    App
  end

  def test_get_pps_to_pps
    get '/velocity/pps/1/to_pps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end

  def test_get_knots_to_pps
    get '/velocity/knots/1/to_pps'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.68781}', last_response.body
  end

  def test_get_mps_to_knots
    get '/velocity/mps/1/to_knots'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.94384}', last_response.body
  end

  def test_get_mph_to_knots
    get '/velocity/mph/1/to_knots'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.868976}', last_response.body
  end

  def test_get_kph_to_knots
    get '/velocity/kph/1/to_knots'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.539957}', last_response.body
  end

  def test_get_pps_to_knots
    get '/velocity/pps/1/to_knots'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.592484}', last_response.body
  end

  def test_get_knots_to_knots
    get '/velocity/knots/1/to_knots'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end
end
