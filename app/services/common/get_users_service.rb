# frozen_string_literal: true

module Common
  class GetUsersService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header, jwt)
      @auth_header = auth_header
      @jwt = jwt
    end

    def run!
      @results = if @jwt['params']['is_admin']
                   User.all
                 else
                   get_subordinate_users
                 end
    end

    private

    def get_subordinate_users
      role = Role.find_by(id: @jwt['params']['role_id'])
      role_ids = Role.where_parent_role(role.parent_role)
                     .pluck(:id)

      User.where(id: @jwt['params']['id'])
          .or(User.where(role_id: role_ids))
    end
  end
end
