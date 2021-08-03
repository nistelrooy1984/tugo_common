# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id(ID)                         :bigint           not null, primary key
#  user_name(User Name)           :string           not null
#  encrypted_password(Password)   :string           not null
#  first_name(First Name)         :string           null
#  last_name(Last Name)           :string           not null
#  email(Email)                   :string           null
#  phone(Phone)                   :string           null
#  department_id(Department ID)   :integer          null
#  role_id(Role ID)               :integer          not null
#  reports_to_id(Reports To ID)   :integer          null
#  is_admin(Is Admin)             :boolean          null
#  modified_by_id(Modified By ID) :integer          not null
#  deleted(Deleted)               :integer          null
#  created_at(Created At)         :datetime         not null
#  updated_at(Updated At)         :datetime         not null
#

class User < ApplicationRecord
  scope :where_user_name, ->(user_name) { where(user_name: user_name) if user_name.present? }
  scope :where_email, ->(email) { where(email: email) if email.present? }
  scope :where_phone, ->(phone) { where(phone: phone) if phone.present? }
  scope :when_user_info, ->(user_info) { where(user_name: user_info).or(where(email: user_info).or(where(phone: user_info))) if user_info.present? }
end
