# frozen_string_literal: true

module Common
  class RolesController < ::Gruf::Controllers::Base
    bind ::Tugo::Common::V1::RoleService::Service

    include TugoCommon::RequestHandler::AuthGrpcHeaderHandler
    include TugoCommon::RequestHandler::JwtHandler

    # cmn_00001 Get Role By Id
    def get_role_by_id
      request_params = Common::RoleIdRequestParams.new(request.message)
      request_params.validate!
      service = Common::GetRoleByIdService.new(request_params, auth_header)
      service.run!
      presenter = Common::RolePresenter.new(service.result)
      presenter.generate_response
    end

    # cmn_00002 Get Roles
    def get_roles
      service = Common::GetRolesService.new(auth_header)
      service.run!
      presenter = Common::RolesPresenter.new(service.results)
      presenter.generate_response
    end

    # cmn_00003 Upsert Role
    def upsert_role
      request_params = Common::UpsertRoleRequestParams.new(request.message)
      request_params.validate!
      service = Common::UpsertRoleService.new(request_params, auth_header)
      service.run!
      presenter = Common::UpsertRolePresenter.new(service.result)
      presenter.generate_response
    end
  end
end
