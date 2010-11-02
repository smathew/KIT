require 'test_helper'

class VisarequestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visarequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visarequest" do
    assert_difference('Visarequest.count') do
      post :create, :visarequest => { }
    end

    assert_redirected_to visarequest_path(assigns(:visarequest))
  end

  test "should show visarequest" do
    get :show, :id => visarequests(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => visarequests(:one).to_param
    assert_response :success
  end

  test "should update visarequest" do
    put :update, :id => visarequests(:one).to_param, :visarequest => { }
    assert_redirected_to visarequest_path(assigns(:visarequest))
  end

  test "should destroy visarequest" do
    assert_difference('Visarequest.count', -1) do
      delete :destroy, :id => visarequests(:one).to_param
    end

    assert_redirected_to visarequests_path
  end
end
