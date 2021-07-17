# frozen_string_literal: true

module Common
  class UpsertUserRequestParams < TugoCommon::RequestParamsBase
    include ::NestedValidatable

    VALIDATE_ATTRIBUTES = %i[
      user
    ].freeze

    attribute :user

    validates :user, presence: true

    def initialize(params)
      super(
        user: Common::UserRequestParams.new(params&.user)
      )
    end
  end
end
