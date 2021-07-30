# frozen_string_literal: true

module Common
  class CountriesProvincesDistrictsPresenter < PresenterBase
    def initialize(countries_provinces_districts)
      @countries_provinces_districts = countries_provinces_districts
    end

    def generate_response
      Tugo::Common::V1::CountriesProvincesDistrictsResponse.new(
        countries: @countries_provinces_districts[:countries]&.each_with_object([]) do |country, arr|
          arr << Tugo::Common::V1::Country.new(
            id: proto_int64(country.id),
            name: proto_string(country.name),
            code: proto_int64(country.code),
            code_name: proto_string(country.code_name),
            phone_code: proto_int64(country.phone_code),
            order: proto_int32(country.order),
            is_usable: proto_bool(country.is_usable)
          )
        end,
        provinces: @countries_provinces_districts[:provinces]&.each_with_object([]) do |province, arr|
          arr << Tugo::Common::V1::Province.new(
            id: proto_int64(province.id),
            name: proto_string(province.name),
            code: proto_int64(province.code),
            code_name: proto_string(province.code_name),
            division_type: proto_string(province.division_type),
            phone_code: proto_int64(province.phone_code),
            order: proto_int32(province.order),
            is_usable: proto_bool(province.is_usable),
            master_country_id: proto_int64(province.master_country_id)
          )
        end,
        districts: @countries_provinces_districts[:districts]&.each_with_object([]) do |district, arr|
          arr << Tugo::Common::V1::District.new(
            id: proto_int64(district.id),
            name: proto_string(district.name),
            code: proto_int64(district.code),
            code_name: proto_string(district.code_name),
            division_type: proto_string(district.division_type),
            short_code_name: proto_string(district.short_code_name),
            order: proto_int32(district.order),
            is_usable: proto_bool(district.is_usable),
            master_province_id: proto_int64(district.master_province_id)
          )
        end
      )
    end
  end
end
