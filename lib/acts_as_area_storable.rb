module ActsAsAreaStorable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_area_storable(opts = {})
      province_field = opts[:province_field] || :province
      city_field = opts[:city_field] || :city
      class_eval %(
        attr_accessor :#{province_field}, :#{city_field}

        def area_store
          [] << #{province_field} << #{city_field}
        end

        def #{province_field}_#{city_field}
          area_store.join '#'
        end
      )
    end
  end
end

ActiveRecord::Base.send :include, ActsAsAreaStorable
