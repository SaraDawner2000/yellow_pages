require 'minitest/autorun'
require './entry'
class TestYellowPages < Minitest::Test
  def test_entry_name
    entry = Entry.new("Natalie", "1111111111")
    assert_equal "Natalie",entry.name, "Assertion failed"
  end
  def test_entry_number
    entry = Entry.new("Natalie", "1111111111")
    assert_equal "+1-(111)-111-1111", entry.phone_number, "Assertion failed"
  end
end
