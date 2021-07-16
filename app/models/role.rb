# frozen_string_literal: true

# == Schema Information
#
# Table name: roles
#
#  id(ID)                        :bigint           not null, primary key
#  role_id(Role ID)              :boolean          not null
#  role_name(Role Name)          :string           not null
#  parent_role(Parent Role)      :string           null
#  depth(Code Depth)             :integer          not null
#  description(Description)      :string           null
#  created_at(Created At)        :datetime         not null
#  updated_at(Updated At)        :datetime         not null
#

class Role < ApplicationRecord
end
