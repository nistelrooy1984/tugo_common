# frozen_string_literal: true

module Common
  class WardsPresenter < PresenterBase
    def initialize(wards)
      @wards = wards
    end

    def generate_response
      Tugo::Common::V1::WardsResponse.new(
        wards: @wards[:wards]&.each_with_object([]) do |ward, arr|
          arr << Tugo::Common::V1::Ward.new(
            id: proto_int64(ward.id),
            name: proto_string(ward.name),
            code: proto_int64(ward.code),
            code_name: proto_string(ward.code_name),
            division_type: proto_string(ward.division_type),
            short_code_name: proto_string(ward.short_code_name),
            order: proto_int32(ward.order),
            is_usable: proto_bool(ward.is_usable),
            master_district_id: proto_int64(ward.master_district_id)
          )
        end
      )
    end
  end
end