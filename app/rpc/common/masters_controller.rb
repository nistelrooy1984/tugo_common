# frozen_string_literal: true

module Common
  class MastersController < ::Gruf::Controllers::Base
    bind ::Tugo::Common::V1::MasterService::Service

    # cmn_00011 Get Countries and Provinces and Districts
    def get_countries_provinces_districts; end

    # cmn_00012 Get Wards By District ID
    def get_wards_by_district_id
      request_params = Common::GetWardsByDistrictIdRequestParams.new(request.message)
      request_params.validate!
      service = Common::GetWardsByDistrictIdService.new(request_params, nil)
      service.run!
      presenter = Common::WardsPresenter.new(service.results)
      presenter.generate_response
    end
  end
end
