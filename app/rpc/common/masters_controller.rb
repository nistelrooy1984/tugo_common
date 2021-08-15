# frozen_string_literal: true

module Common
  class MastersController < ::Gruf::Controllers::Base
    bind ::Tugo::Common::V1::MasterService::Service

    include TugoCommon::RequestHandler::AuthGrpcHeaderHandler
    include TugoCommon::RequestHandler::JwtHandler

    # cmn_00011 Get Countries and Provinces and Districts
    def get_countries_provinces_districts
      service = Common::GetCountriesProvincesDistrictsService.new(auth_header)
      service.run!
      presenter = Common::CountriesProvincesDistrictsPresenter.new(service.results)
      presenter.generate_response
    end

    # cmn_00012 Get Wards By District ID
    def get_wards_by_district_id
      request_params = Common::GetWardsByDistrictIdRequestParams.new(request.message)
      request_params.validate!
      service = Common::GetWardsByDistrictIdService.new(request_params, auth_header)
      service.run!
      presenter = Common::WardsPresenter.new(service.results)
      presenter.generate_response
    end
  end
end
