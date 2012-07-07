class Concert < ActiveRecord::Base
  acts_as_area_storable :province_field => :test_province, :city_field => :test_city
end
