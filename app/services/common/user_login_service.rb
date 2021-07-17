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
      user_login = @request_params.user_name || @request_params.email || @request_params.phone

      user = User.where_user_name(@request_params.user_name)
                 .where_email(@request_params.email)
                 .where_phone(@request_params.phone)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.user.record_not_found', user_login: user_login) if user.blank?

      @result = user.first
    end
  end
end
