require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:breakfast)
  end

  test "visiting the archive index page" do
    visit archives_index_url
    assert_selector "p", text: "Foodlog"
    assert_selector "h3", text: "Entries for #{@entry.day}"
    assert text: @entry.meal_type
  end
end
