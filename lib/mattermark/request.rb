require 'rest-client'

module Mattermark
  module Request

    def get(url, params={})
      RestClient.get(url, build_params(params)) do |resp, req, res, &block|
        case resp.code
        when 200
          JSON.parse(resp)
        when 403
          raise Mattermark::Forbidden
        when 500
          raise Mattermark::InternalServerError
        else
          resp.return!(req, res, &block)
        end
      end
    end

    private

    def build_params(params)
      default_params = { key: self.api_key }
      { params: default_params.merge(params) }
    end

  end
end
