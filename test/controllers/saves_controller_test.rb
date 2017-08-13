require 'test_helper'

class SavesControllerTest < ActionDispatch::IntegrationTest
  test "should get save" do
    get saves_save_url
    assert_response :success
  end

end
