require_relative '../test_helper'

class Mattermark::ConfigurationTest < MiniTest::Unit::TestCase
  def setup
    @api_key = 'foobar'
    Mattermark.configure do |c|
      c.api_key = @api_key
    end
  end

  def test_configure
    client = Mattermark::Client.new
    assert_equal @api_key, client.api_key
  end

  def test_configuration
    assert_equal({ api_key: @api_key }, Mattermark.configuration)
  end

  def test_reset!
    Mattermark.reset!
    client = Mattermark::Client.new
    assert_nil client.api_key
  end
end
