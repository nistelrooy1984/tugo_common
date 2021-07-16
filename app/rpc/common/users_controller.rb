# frozen_string_literal: true

module Common
  class UsersController < ::Gruf::Controllers::Base
    bind ::Tugo::Common::V1::UserService::Service

    # cmn_00007 Get User By User Name
    def get_user_by_user_name; end

    # cmn_00008 Get Users
    def get_users; end

    # cmn_00009 Upsert User
    def upsert_user; end

    # cmn_00010 User Login
    def user_login; end
  end
end
