require 'minitest/autorun'
require 'mattermark'
require 'vcr'
require 'webmock'

class MiniTest::Unit::TestCase
  def teardown
    Mattermark.reset!
  end
end

VCR.configure do |c|
  c.cassette_library_dir = 'test/cassettes'
  c.hook_into :webmock
end
