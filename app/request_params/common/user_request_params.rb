# frozen_string_literal: true

module Common
  class UserRequestParams < TugoCommon::RequestParamsBase
    attribute :id, :integer
    attribute :user_name, :string
    attribute :encrypted_password, :string
    attribute :first_name, :string
    attribute :last_name, :string
    attribute :email, :string
    attribute :phone, :string
    attribute :department_id, :integer
    attribute :role_id, :integer
    attribute :reports_to_id, :integer
    attribute :is_admin, :boolean
    attribute :modified_by_id, :integer
    attribute :description, :string
    attribute :deleted, :integer
    attribute :created_at
    attribute :updated_at

    validates :id, numericality: { only_integer: true, greater_than: 0 }, allow_blank: true
    validates :user_name,
              :encrypted_password,
              :last_name, presence: true
    validates :role_id, :modified_by_id, numericality: { only_integer: true, greater_than: 0 }
    validates :is_admin, inclusion: { in: [true, false] }, allow_blank: true
    validates :email, email: true, allow_blank: true

    def initialize(params)
      super(
        id: params&.id&.value,
        user_name: params&.user_name&.value,
        encrypted_password: params&.encrypted_password&.value,
        first_name: params&.first_name&.value,
        last_name: params&.last_name&.value,
        email: params&.email&.value,
        phone: params&.phone&.value,
        department_id: params&.department_id&.value,
        role_id: params&.role_id&.value,
        reports_to_id: params&.reports_to_id&.value,
        is_admin: params&.is_admin&.value,
        modified_by_id: params&.modified_by_id&.value,
        description: params&.description&.value,
        deleted: params&.deleted&.value,
        created_at: params&.created_at&.value,
        updated_at: params&.updated_at&.value
      )
    end
  end
end
