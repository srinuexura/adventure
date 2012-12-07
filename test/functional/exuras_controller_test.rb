require 'test_helper'

class ExurasControllerTest < ActionController::TestCase
  setup do
    @exura = exuras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exuras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exura" do
    assert_difference('Exura.count') do
      post :create, :exura => { :description => @exura.description, :email => @exura.email, :name => @exura.name, :phone => @exura.phone }
    end

    assert_redirected_to exura_path(assigns(:exura))
  end

  test "should show exura" do
    get :show, :id => @exura
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @exura
    assert_response :success
  end

  test "should update exura" do
    put :update, :id => @exura, :exura => { :description => @exura.description, :email => @exura.email, :name => @exura.name, :phone => @exura.phone }
    assert_redirected_to exura_path(assigns(:exura))
  end

  test "should destroy exura" do
    assert_difference('Exura.count', -1) do
      delete :destroy, :id => @exura
    end

    assert_redirected_to exuras_path
  end
end
