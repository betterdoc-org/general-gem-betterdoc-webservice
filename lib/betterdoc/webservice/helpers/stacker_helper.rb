module Betterdoc
  module Webservice
    module Helpers
      module StackerHelper
        extend ActiveSupport::Concern

        def stacker_request?
          request.headers['HTTP_X_STACKER_ROOT_URL'].present?
        end

      end
    end
  end
end
