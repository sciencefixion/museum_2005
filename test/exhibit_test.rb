require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class ExhibitTest < Minitest::Test

  def test_it_exists
    exhibit = Exhibit.new

    assert_instance_of Exhibit, exhibit
  end

end
