require 'test_helper'

class SiteContactsControllerTest < ActionController::TestCase
  setup do
    @site_contact = site_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_contact" do
    assert_difference('SiteContact.count') do
      post :create, site_contact: @site_contact.attributes
    end

    assert_redirected_to site_contact_path(assigns(:site_contact))
  end

  test "should show site_contact" do
    get :show, id: @site_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_contact.to_param
    assert_response :success
  end

  test "should update site_contact" do
    put :update, id: @site_contact.to_param, site_contact: @site_contact.attributes
    assert_redirected_to site_contact_path(assigns(:site_contact))
  end

  test "should destroy site_contact" do
    assert_difference('SiteContact.count', -1) do
      delete :destroy, id: @site_contact.to_param
    end

    assert_redirected_to site_contacts_path
  end
end
