# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user       = users(:hi)
    @other_user = users(:michael)
  end
  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end
  test "should not allow the admin attribute to be edited via the web" do
    log_in_as(@other_user)
    assert_not @other_user.admin?
    patch user_path(@other_user), params: {
                                    user: { password:              FILL_IN,
                                            password_confirmation: FILL_IN,
                                            admin: FILL_IN } }
    assert_not @other_user.FILL_IN.admin?
  end
  test 'should get new' do
    get signup_path
    assert_response :success
  end
end
