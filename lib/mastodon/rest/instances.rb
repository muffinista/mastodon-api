require 'mastodon/rest/utils'
require 'mastodon/instance'

module Mastodon
  module REST
    module Instances
      include Mastodon::REST::Utils

      # Retrieve the current instance. Does not require authentication
      # @return [Mastodon::Instance]
      def instance
        perform_request_with_object(:get, '/api/v1/instance', {}, Mastodon::Instance)
      end
    end
  end
end
