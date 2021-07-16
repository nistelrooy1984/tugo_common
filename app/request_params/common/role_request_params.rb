# frozen_string_literal: true

module Common
  class RoleRequestParams < TugoCommon::RequestParamsBase
    attribute :id, :integer
    attribute :role_id, :string
    attribute :role_name, :string
    attribute :parent_role, :string
    attribute :depth, :integer
    attribute :description, :string
    attribute :created_at
    attribute :updated_at

    validates :id, numericality: { only_integer: true, greater_than: 0 }, allow_blank: true
    validates :role_id,
              :role_name, presence: true
    validates :depth, numericality: { only_integer: true, greater_than: 0 }

    def initialize(params)
      super(
        id: params&.id&.value,
        role_id: params&.role_id&.value,
        role_name: params&.role_name&.value,
        parent_role: params&.parent_role&.value,
        depth: params&.depth&.value,
        description: params&.description&.value,
        created_at: params&.created_at&.value,
        updated_at: params&.updated_at&.value
      )
    end
  end
end
