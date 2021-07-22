# frozen_string_literal: true

module Common
  class UsersPresenter < PresenterBase
    def initialize(users)
      @users = users
    end

    def generate_response
      Tugo::Common::V1::UsersResponse.new(
        users: @users.each_with_object([]) do |user, arr|
          arr << Tugo::Common::V1::User.new(
            id: proto_int64(user.id),
            user_name: proto_string(user.user_name),
            encrypted_password: proto_string(user.encrypted_password),
            first_name: proto_string(user.first_name),
            last_name: proto_string(user.last_name),
            email: proto_string(user.email),
            phone: proto_string(user.phone),
            department_id: proto_int64(user.department_id),
            role_id: proto_int64(user.role_id),
            reports_to_id: proto_int64(user.reports_to_id),
            is_admin: proto_bool(user.is_admin),
            modified_by_id: proto_int64(user.modified_by_id),
            deleted: proto_int64(user.deleted),
            created_at: proto_string(user.created_at),
            updated_at: proto_string(user.updated_at)
          )
        end
      )
    end
  end
end