module ActsAsAreaStorable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_area_storable(opts = {})
      opts[:province_field] ||= :province
      opts[:city_field] ||= :city
      class_eval %(
        attr_accessor :#{opts[:province_field]}, :#{opts[:city_field]}
      )
    end
  end
end

ActiveRecord::Base.send :include, ActsAsAreaStorable
