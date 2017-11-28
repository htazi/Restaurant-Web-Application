rrequire 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Restaurant Web App"
  end

  test "should get help" do
    get login_path
    assert_response :success
    assert_select "title", "Help | Restaurant Web App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Restaurant Web App"
  end
end

