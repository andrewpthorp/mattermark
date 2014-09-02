require 'mattermark/request'
require 'mattermark/configuration'
require 'mattermark/client/companies'

module Mattermark
  class Client
    attr_accessor *Mattermark::Configuration::KEYS

    def initialize(opts={})
      config = Mattermark.configuration.merge(opts)
      Mattermark::Configuration::KEYS.each do |key|
        send("#{key}=", config[key])
      end
    end

    def base_url
      'https://mattermark.com/app/v0'
    end

    include Mattermark::Request
    include Mattermark::Client::Companies
  end
end
