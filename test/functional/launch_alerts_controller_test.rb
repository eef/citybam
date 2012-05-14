require 'test_helper'

class LaunchAlertsControllerTest < ActionController::TestCase
  setup do
    @launch_alert = launch_alerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:launch_alerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create launch_alert" do
    assert_difference('LaunchAlert.count') do
      post :create, launch_alert: { email: @launch_alert.email }
    end

    assert_redirected_to launch_alert_path(assigns(:launch_alert))
  end

  test "should show launch_alert" do
    get :show, id: @launch_alert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @launch_alert
    assert_response :success
  end

  test "should update launch_alert" do
    put :update, id: @launch_alert, launch_alert: { email: @launch_alert.email }
    assert_redirected_to launch_alert_path(assigns(:launch_alert))
  end

  test "should destroy launch_alert" do
    assert_difference('LaunchAlert.count', -1) do
      delete :destroy, id: @launch_alert
    end

    assert_redirected_to launch_alerts_path
  end
end
