# frozen_string_literal: true

module Common
  class UsersController < ::Gruf::Controllers::Base
    bind ::Tugo::Common::V1::UserService::Service

    # cmn_00007 Get User By User Name
    def get_user_by_user_name; end

    # cmn_00008 Get Users
    def get_users; end

    # cmn_00009 Upsert User
    def upsert_user
      request_params = Common::UpsertUserRequestParams.new(request.message)
      request_params.validate!
      service = Common::UpsertUserService.new(request_params, nil)
      service.run!
      presenter = Common::UpsertUserPresenter.new(service.result)
      presenter.generate_response
    end

    # cmn_00010 User Login
    def user_login
      request_params = Common::UserLoginRequestParams.new(request.message)
      request_params.validate!
      service = Common::UserLoginService.new(request_params, nil)
      service.run!
      presenter = Common::UserPresenter.new(service.result)
      presenter.generate_response
    end
  end
end
