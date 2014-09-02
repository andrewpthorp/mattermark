module Mattermark
  class Client
    module Companies

      def companies(opts={})
        get("#{base_url}/companies", opts)
      end

      def company(id)
        get("#{base_url}/companies/#{id}")
      end

    end
  end
end
