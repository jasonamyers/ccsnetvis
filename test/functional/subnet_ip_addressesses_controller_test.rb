require 'test_helper'

class SubnetIpAddressessesControllerTest < ActionController::TestCase
  setup do
    @subnet_ip_addressess = subnet_ip_addressesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subnet_ip_addressesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subnet_ip_addressess" do
    assert_difference('SubnetIpAddressess.count') do
      post :create, subnet_ip_addressess: @subnet_ip_addressess.attributes
    end

    assert_redirected_to subnet_ip_addressess_path(assigns(:subnet_ip_addressess))
  end

  test "should show subnet_ip_addressess" do
    get :show, id: @subnet_ip_addressess.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subnet_ip_addressess.to_param
    assert_response :success
  end

  test "should update subnet_ip_addressess" do
    put :update, id: @subnet_ip_addressess.to_param, subnet_ip_addressess: @subnet_ip_addressess.attributes
    assert_redirected_to subnet_ip_addressess_path(assigns(:subnet_ip_addressess))
  end

  test "should destroy subnet_ip_addressess" do
    assert_difference('SubnetIpAddressess.count', -1) do
      delete :destroy, id: @subnet_ip_addressess.to_param
    end

    assert_redirected_to subnet_ip_addressesses_path
  end
end
