# frozen_string_literal: true

module Common
  class DepartmentsPresenter < PresenterBase
    def initialize(departments)
      @departments = departments
    end

    def generate_response
      Tugo::Common::V1::DepartmentsResponse.new(
        departments: @departments.each_with_object([]) do |department, arr|
          arr << Tugo::Common::V1::Department.new(
            id: proto_int64(department.id),
            department_name: proto_string(department.department_name),
            parent_department_id: proto_int64(department.parent_department_id),
            description: proto_string(department.description),
            created_at: proto_string(department.created_at),
            updated_at: proto_string(department.updated_at)
          )
        end
      )
    end
  end
end
