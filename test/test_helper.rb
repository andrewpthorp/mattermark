require 'minitest/autorun'
require 'mattermark'

class MiniTest::Unit::TestCase
  def teardown
    Mattermark.reset!
  end
end
