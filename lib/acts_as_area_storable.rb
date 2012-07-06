module ActsAsAreaStorable
  extend ActiveSupport::Concern

  included do
  end

  module ClassMethods
    def acts_as_area_storable(options = {})
    end
  end
end

ActiveRecord::Base.send :include, ActsAsAreaStorable
