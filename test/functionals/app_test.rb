require_relative '../test_helper'
require_relative '../../app'

class AppTest < Minitest::Test
  def app
    App
  end

  def test_get_home
    get '/asdfasdf'
    assert_equal 404, last_response.status
    assert_equal "404 - not found.\n", last_response.body
  end
end
