require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "My Grocery App"
    assert_equal full_title("Help"), "Help | My Grocery App"
  end
end
