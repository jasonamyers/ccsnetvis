require 'test_helper'

class SiteSubnetsControllerTest < ActionController::TestCase
  setup do
    @site_subnet = site_subnets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_subnets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_subnet" do
    assert_difference('SiteSubnet.count') do
      post :create, site_subnet: @site_subnet.attributes
    end

    assert_redirected_to site_subnet_path(assigns(:site_subnet))
  end

  test "should show site_subnet" do
    get :show, id: @site_subnet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_subnet.to_param
    assert_response :success
  end

  test "should update site_subnet" do
    put :update, id: @site_subnet.to_param, site_subnet: @site_subnet.attributes
    assert_redirected_to site_subnet_path(assigns(:site_subnet))
  end

  test "should destroy site_subnet" do
    assert_difference('SiteSubnet.count', -1) do
      delete :destroy, id: @site_subnet.to_param
    end

    assert_redirected_to site_subnets_path
  end
end
