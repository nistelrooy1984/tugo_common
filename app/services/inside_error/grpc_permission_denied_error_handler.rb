# frozen_string_literal: true

module InsideError
  class GrpcPermissionDeniedErrorHandler < TugoCommon::ErrorHandler::BaseHandler
    def run!
      custom_fail!(:permission_denied, @exception.message)
    end
  end
end
