require_relative '../test_helper'
require_relative '../../app'

class Weight2Test < Minitest::Test
  def app
    App
  end

  def test_get_kg_to_oz
    get '/weight/kg/1/to_oz'
    assert_equal 200, last_response.status
    assert_equal '{"temp":35.274}', last_response.body
  end

  def test_get_t_to_oz
    get '/weight/t/1/to_oz'
    assert_equal 200, last_response.status
    assert_equal '{"temp":35274.0}', last_response.body
  end

  def test_get_oz_to_oz
    get '/weight/oz/1/to_oz'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end

  def test_get_lb_to_oz
    get '/weight/lb/1/to_oz'
    assert_equal 200, last_response.status
    assert_equal '{"temp":16.000004208}', last_response.body
  end

  def test_get_ct_to_oz
    get '/weight/ct/1/to_oz'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.0070548}', last_response.body
  end

  def test_get_g_to_lb
    get '/weight/g/1/to_lb'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.00220462}', last_response.body
  end

  def test_get_kg_to_lb
    get '/weight/kg/1/to_lb'
    assert_equal 200, last_response.status
    assert_equal '{"temp":2.20462}', last_response.body
  end

  def test_get_t_to_lb
    get '/weight/t/1/to_lb'
    assert_equal 200, last_response.status
    assert_equal '{"temp":2204.62}', last_response.body
  end

  def test_get_oz_to_lb
    get '/weight/oz/1/to_lb'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.06249987469}', last_response.body
  end

  def test_get_lb_to_lb
    get '/weight/lb/1/to_lb'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end

  def test_get_ct_to_lb
    get '/weight/ct/1/to_lb'
    assert_equal 200, last_response.status
    assert_equal '{"temp":0.00044092400000000004}', last_response.body
  end

  def test_get_g_to_ct
    get '/weight/g/1/to_ct'
    assert_equal 200, last_response.status
    assert_equal '{"temp":5.0}', last_response.body
  end

  def test_get_kg_to_ct
    get '/weight/kg/1/to_ct'
    assert_equal 200, last_response.status
    assert_equal '{"temp":5000.0}', last_response.body
  end

  def test_get_t_to_ct
    get '/weight/t/1/to_ct'
    assert_equal 200, last_response.status
    assert_equal '{"temp":5000000.0}', last_response.body
  end

  def test_get_oz_to_ct
    get '/weight/oz/1/to_ct'
    assert_equal 200, last_response.status
    assert_equal '{"temp":141.7475}', last_response.body
  end

  def test_get_lb_to_ct
    get '/weight/lb/1/to_ct'
    assert_equal 200, last_response.status
    assert_equal '{"temp":2267.96}', last_response.body
  end

  def test_get_ct_to_ct
    get '/weight/ct/1/to_ct'
    assert_equal 200, last_response.status
    assert_equal '{"temp":1.0}', last_response.body
  end
end
