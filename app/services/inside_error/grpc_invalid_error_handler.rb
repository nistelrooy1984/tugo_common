# frozen_string_literal: true

module InsideError
  class GrpcInvalidErrorHandler < TugoCommon::ErrorHandler::BaseHandler
    def run!
      custom_fail!(:invalid_argument, @exception.message)
    end
  end
end
