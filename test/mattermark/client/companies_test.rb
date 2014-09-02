require_relative '../../test_helper'

class Mattermark::ClientTest < Minitest::Unit::TestCase
  def setup
    @client = Mattermark::Client.new
  end

  def test_companies
    VCR.use_cassette('companies') do
      response = @client.companies(domain: 'stripe.com')
      assert_equal 1, response['total_companies']
      assert_equal '59884', response['companies'][0]['id']
    end
  end

  def test_company
    VCR.use_cassette('company') do
      response = @client.company(59884)
      assert_equal 'Stripe', response['name']
      assert_equal 'stripe.com', response['website']
    end
  end
end
