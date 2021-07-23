# frozen_string_literal: true

module Common
  class GetByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      user = User.find_by(id: @request_params.user_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.user_id.record_not_found') if user.blank?

      @result = user
    end
  end
end
