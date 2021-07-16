# frozen_string_literal: true

module Common
  class RolePresenter < PresenterBase
    def initialize(role)
      @role = role
    end

    def generate_response
      Tugo::Common::V1::RoleResponse.new(
        role: Tugo::Common::V1::Role.new(
          id: proto_int64(@role.id),
          role_id: proto_string(@role.role_id),
          role_name: proto_string(@role.role_name),
          parent_role: proto_string(@role.parent_role),
          depth: proto_int64(@role.depth),
          description: proto_string(@role.description),
          created_at: proto_string(@role.created_at),
          updated_at: proto_string(@role.updated_at)
        )
      )
    end
  end
end
