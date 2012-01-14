require 'test_helper'

class SubnetIpaddressesControllerTest < ActionController::TestCase
  setup do
    @subnet_ipaddress = subnet_ipaddresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subnet_ipaddresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subnet_ipaddress" do
    assert_difference('SubnetIpaddress.count') do
      post :create, subnet_ipaddress: @subnet_ipaddress.attributes
    end

    assert_redirected_to subnet_ipaddress_path(assigns(:subnet_ipaddress))
  end

  test "should show subnet_ipaddress" do
    get :show, id: @subnet_ipaddress.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subnet_ipaddress.to_param
    assert_response :success
  end

  test "should update subnet_ipaddress" do
    put :update, id: @subnet_ipaddress.to_param, subnet_ipaddress: @subnet_ipaddress.attributes
    assert_redirected_to subnet_ipaddress_path(assigns(:subnet_ipaddress))
  end

  test "should destroy subnet_ipaddress" do
    assert_difference('SubnetIpaddress.count', -1) do
      delete :destroy, id: @subnet_ipaddress.to_param
    end

    assert_redirected_to subnet_ipaddresses_path
  end
end
