# frozen_string_literal: true

module Common
  class GetRoleByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      role = Role.find_by_id(@request_params.id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.role.record_not_found') if role.blank?

      @result = role
    end
  end
end
