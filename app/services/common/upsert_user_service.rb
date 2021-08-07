# frozen_string_literal: true

module Common
  class UpsertUserService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      user = User.find_or_initialize_by(user_name: @request_params.user.user_name)

      user.user_name = @request_params.user.user_name
      user.encrypted_password = @request_params.user.encrypted_password
      user.first_name = @request_params.user.first_name
      user.last_name = @request_params.user.last_name
      user.email = @request_params.user.email
      user.phone = @request_params.user.phone
      user.department_id = @request_params.user.department_id
      user.role_id = @request_params.user.role_id || Role.last&.id || 0
      user.reports_to_id = @request_params.user.reports_to_id
      user.is_admin = @request_params.user.is_admin
      user.modified_by_id = @request_params.user.modified_by_id || User.first&.id || 0
      user.description = @request_params.user.description
      user.deleted = @request_params.user.deleted || 0

      user.save

      @result = user
    end
  end
end
