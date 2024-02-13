require "test_helper"

class TodoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todos_path
    assert_response :success
  end

  test "should post todos" do
    post todos_path
    assert_response :redirect
  end
end
