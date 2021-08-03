# frozen_string_literal: true

module Common
  class UserLoginService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      user = User.when_user_info(@request_params.user_info)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.user.record_not_found', user_info: @request_params.user_info) if user.blank?

      @result = user.first
    end
  end
end
