require 'test_helper'

class ActsAsAreaStorableTest < ActiveSupport::TestCase
  def test_a_party_should_respond_acts_as_area_storable_method
    assert_respond_to Party, :acts_as_area_storable
  end
end
