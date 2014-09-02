require_relative '../test_helper'

class Mattermark::ClientTest < Minitest::Unit::TestCase
  def setup
    @client = Mattermark::Client.new
  end

  def test_initializer
    c = Mattermark::Client.new(api_key: 'foobar')
    assert_equal 'foobar', c.api_key
  end

  def test_base_url
    assert_equal "https://mattermark.com/app/v0/", @client.base_url
  end
end
