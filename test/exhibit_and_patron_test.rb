require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class ExhibitTest < Minitest::Test

  def setup
    @exhibit = Exhibit.new("Gems and Minerals", 0)
    @bob = Patron.new("Bob", 20)
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
  end

  def test_attributes_exhibit
    assert_equal "Gems and Minerals", @exhibit.name
    assert_equal 0, @exhibit.cost
  end

  def test_attributes_patron
    assert_equal "Bob", @bob.name
    assert_equal 20, @bob.spending_money
  end

  def test_interests
    assert_equal [], @bob.interests
    @bob.add_interest("Dead Sea Scrolls")
    @bob.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], @bob.interests
  end
end
