require_relative '../test_helper'

class Mattermark::RequestTest < Minitest::Unit::TestCase
  def setup
    @client = Mattermark::Client.new
  end

  def test_get
    VCR.use_cassette('get') do
      opts = { domain: 'stripe.com' }
      response = @client.get("#{@client.base_url}/companies", opts)
      assert_equal 1, response['total_companies']
      assert_equal '59884', response['companies'][0]['id']
    end
  end

  def test_build_params
    client = Mattermark::Client.new(api_key: 'foobar')
    params = client.send(:build_params, { baz: 'qux' })
    assert_equal({params: {key: 'foobar', baz: 'qux'}}, params)
  end
end
