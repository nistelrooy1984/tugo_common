# frozen_string_literal: true

# == Schema Information
#
# Table name: departments
#
#  id(ID)                                     :bigint           not null, primary key
#  department_name(Department Name)           :string           not null
#  parent_department_id(Parent Department ID) :integer          null
#  description(Description)                   :string           null
#  created_at(Created At)                     :datetime         not null
#  updated_at(Updated At)                     :datetime         not null
#

class Department < ApplicationRecord
end
