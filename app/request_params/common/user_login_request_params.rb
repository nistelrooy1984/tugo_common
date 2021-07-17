# frozen_string_literal: true

module Common
  class UserLoginRequestParams < TugoCommon::RequestParamsBase
    attribute :user_name, :string
    attribute :encrypted_password, :string
    attribute :email, :string
    attribute :phone, :string

    validates :email, email: true, allow_blank: true

    def initialize(params)
      super(
        user_name: params&.user_name&.value,
        encrypted_password: params&.encrypted_password&.value,
        email: params&.email&.value,
        phone: params&.phone&.value
      )
    end
  end
end
