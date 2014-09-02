module Mattermark
  module Configuration

    KEYS = [:api_key]
    attr_accessor *KEYS

    def self.extended(base)
      base.reset!
    end

    def configure
      yield self
    end

    def configuration
      KEYS.inject({}){|o,k| o.merge!(k => send(k)) }
    end

    def reset!
      self.api_key = nil
    end

  end
end
