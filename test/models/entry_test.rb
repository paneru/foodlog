require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with the valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", calories: 350, proteins: 250, fats: 30, carb: 35)
    assert entry.save
  end
end
