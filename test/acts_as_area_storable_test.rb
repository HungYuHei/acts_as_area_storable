require 'test_helper'

class ActsAsAreaStorableTest < ActiveSupport::TestCase
  def test_a_party_should_respond_acts_as_area_storable_method
    assert_respond_to Party, :acts_as_area_storable
  end

  def test_party_should_respond_province_method_by_default
    party = Party.new
    assert_respond_to party, :province
    party.province = 'Canton'
    assert_equal 'Canton', party.province
  end

  def test_party_should_respond_city_method_by_default
    party = Party.new
    assert_respond_to party, :city
    party.city = 'Foshan'
    assert_equal 'Foshan', party.city
  end

  def test_concert_should_respond_specified_methods
    concert = Concert.new

    assert_respond_to concert, :test_province
    concert.test_province = 'Canton'
    assert_equal 'Canton', concert.test_province

    assert_respond_to concert, :test_city
    concert.test_city = 'Foshan'
    assert_equal 'Foshan', concert.test_city
  end

  def test_party_should_respond_province_field_city_field_method
    party = Party.new
    party.province = 'Canton'
    party.city = 'Foshan'

    assert_respond_to party, :area_store
    assert_equal %w(Canton Foshan), party.area_store

    assert_respond_to party, :province_city
    assert_equal 'Canton#Foshan', party.province_city
  end
end
