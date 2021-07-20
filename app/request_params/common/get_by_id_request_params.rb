# frozen_string_literal: true

module Common
  class GetByIdRequestParams < TugoCommon::RequestParamsBase
    attribute :user_id, :integer

    validates :user_id, numericality: { only_integer: true, greater_than: 0}

    def initialize(params)
      super(
        user_id: params&.user_id&.value
      )
    end
  end
end