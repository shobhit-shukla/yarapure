require 'test_helper'

class Admin::AddressesControllerTest < ActionController::TestCase
  setup do
    @admin_address = admin_addresses(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_addresses)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create admin_address' do
    assert_difference('Admin::Address.count') do
      post :create, admin_address: { active: @admin_address.active, address1: @admin_address.address1, address2: @admin_address.address2, city_id: @admin_address.city_id, user_id: @admin_address.user_id, zip_code: @admin_address.zip_code }
    end

    assert_redirected_to admin_address_path(assigns(:admin_address))
  end

  test 'should show admin_address' do
    get :show, id: @admin_address
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @admin_address
    assert_response :success
  end

  test 'should update admin_address' do
    patch :update, id: @admin_address, admin_address: { active: @admin_address.active, address1: @admin_address.address1, address2: @admin_address.address2, city_id: @admin_address.city_id, user_id: @admin_address.user_id, zip_code: @admin_address.zip_code }
    assert_redirected_to admin_address_path(assigns(:admin_address))
  end

  test 'should destroy admin_address' do
    assert_difference('Admin::Address.count', -1) do
      delete :destroy, id: @admin_address
    end

    assert_redirected_to admin_addresses_path
  end
end
