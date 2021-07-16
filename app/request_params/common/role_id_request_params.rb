# frozen_string_literal: true

module Common
  class RoleIdRequestParams < TugoCommon::RequestParamsBase
    attribute :id, :integer

    validates :id, numericality: { only_integer: true, greater_than: 0 }

    def initialize(params)
      super(
        id: params.id&.value
      )
    end
  end
end