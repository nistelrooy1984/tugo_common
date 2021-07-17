# frozen_string_literal: true

module Common
  class UpsertRoleService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      role = Role.find_or_initialize_by(role_id: @request_params.role.role_id)

      role.role_id = @request_params.role.role_id
      role.role_name = @request_params.role.role_name
      role.parent_role = @request_params.role.parent_role
      role.depth = @request_params.role.depth
      role.description = @request_params.role.description

      role.save

      @result = role
    end
  end
end
