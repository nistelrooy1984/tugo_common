# frozen_string_literal: true

module Common
  class DepartmentsController < ::Gruf::Controllers::Base
    bind ::Tugo::Common::V1::DepartmentService::Service

    include TugoCommon::RequestHandler::AuthGrpcHeaderHandler
    include TugoCommon::RequestHandler::JwtHandler

    # cmn_00004 Get Department By Id
    def get_department_by_id; end

    # cmn_00005 Get Departments
    def get_departments
      service = Common::GetDepartmentsService.new(auth_header)
      service.run!
      presenter = Common::DepartmentsPresenter.new(service.results)
      presenter.generate_response
    end

    # cmn_00006 Upsert Department
    def upsert_department; end
  end
end
