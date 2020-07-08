require 'test_helper'

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get model_create_url
    assert_response :success
  end

  test "should get show" do
    get model_show_url
    assert_response :success
  end

end
