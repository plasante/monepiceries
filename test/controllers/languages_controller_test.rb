require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get switch" do
    get languages_switch_url
    assert_response :success
  end

end
