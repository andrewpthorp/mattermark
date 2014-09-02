module Mattermark

  class Error < StandardError; end
  class Forbidden < Error; end
  class InternalServerError < Error; end

end
