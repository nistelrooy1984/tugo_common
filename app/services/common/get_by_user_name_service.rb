# frozen_string_literal: true

module Common
  class GetByUserNameService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      user = User.where_user_name(@request_params.user_name)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.user.record_not_found', user_login: @request_params.user_name) if user.blank?

      @result = user.first
    end
  end
end
