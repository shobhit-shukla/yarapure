require 'test_helper'

class Admin::DispatchersControllerTest < ActionController::TestCase
  setup do
    @admin_dispatcher = admin_dispatchers(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_dispatchers)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create admin_dispatcher' do
    assert_difference('Admin::Dispatcher.count') do
      post :create, admin_dispatcher: {}
    end

    assert_redirected_to admin_dispatcher_path(assigns(:admin_dispatcher))
  end

  test 'should show admin_dispatcher' do
    get :show, id: @admin_dispatcher
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @admin_dispatcher
    assert_response :success
  end

  test 'should update admin_dispatcher' do
    patch :update, id: @admin_dispatcher, admin_dispatcher: {}
    assert_redirected_to admin_dispatcher_path(assigns(:admin_dispatcher))
  end

  test 'should destroy admin_dispatcher' do
    assert_difference('Admin::Dispatcher.count', -1) do
      delete :destroy, id: @admin_dispatcher
    end

    assert_redirected_to admin_dispatchers_path
  end
end
