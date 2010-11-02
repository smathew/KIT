require 'test_helper'

class LoanappsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loanapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loanapp" do
    assert_difference('Loanapp.count') do
      post :create, :loanapp => { }
    end

    assert_redirected_to loanapp_path(assigns(:loanapp))
  end

  test "should show loanapp" do
    get :show, :id => loanapps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => loanapps(:one).to_param
    assert_response :success
  end

  test "should update loanapp" do
    put :update, :id => loanapps(:one).to_param, :loanapp => { }
    assert_redirected_to loanapp_path(assigns(:loanapp))
  end

  test "should destroy loanapp" do
    assert_difference('Loanapp.count', -1) do
      delete :destroy, :id => loanapps(:one).to_param
    end

    assert_redirected_to loanapps_path
  end
end
