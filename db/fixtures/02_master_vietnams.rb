# frozen_string_literal: true

# Using import master via file csv
# ActiveRecord::Base.transaction do
#   file_data = File.read('db/master_data/vietnams.json')
#   provinces = JSON.parse(file_data)

#   provinces.each do |province|
#     pro = Master::Province.new

#     pro.name = province['name']
#     pro.code = province['code']
#     pro.code_name = province['codename']
#     pro.division_type = province['division_type']
#     pro.phone_code = province['phone_code']
#     pro.order = province['code']
#     pro.is_usable = true
#     pro.master_country_id = 1

#     pro.save

#     province['districts'].each do |district|
#       dis = Master::District.new

#       dis.name = district['name']
#       dis.code = district['code']
#       dis.code_name = district['codename']
#       dis.division_type = district['division_type']
#       dis.short_code_name = district['short_codename']
#       dis.order = district['code']
#       dis.is_usable = true,
#       dis.master_province_id = pro.id

#       dis.save

#       district['wards'].each do |ward|
#         war = Master::Ward.new

#         war.name = ward['name']
#         war.code = ward['code']
#         war.code_name = ward['codename']
#         war.division_type = ward['division_type']
#         war.short_code_name = ward['short_codename']
#         war.order = ward['code']
#         war.is_usable = true
#         war.master_district_id = dis.id

#         war.save
#       end
#     end
#   end
# end
