# frozen_string_literal: true

module Common
  class GetSubordinateUsersService
    include ActiveModel::Model

    attr_reader :results

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      user = User.find_by(id: @request_params.user_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.user_id.record_not_found', user_id: @request_params.user_id) if user.blank?

      role = Role.find_by(id: user.role_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.user_id.record_not_found', user_id: @request_params.user_id) if role.blank?

      childrenRoles = Role.where_parent_role(role.parent_role)

      users = User.where_all_users_on_roles(childrenRoles.pluck(:id))

      @results = users
    end
  end
end
