# frozen_string_literal: true

module Common
  class GetDepartmentsService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      @results = Department.all
    end
  end
end
