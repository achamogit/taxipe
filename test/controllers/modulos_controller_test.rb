require 'test_helper'

class ModulosControllerTest < ActionController::TestCase
  setup do
    @modulo = modulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modulo" do
    assert_difference('Modulo.count') do
      post :create, modulo: { description: @modulo.description, name: @modulo.name, status: @modulo.status }
    end

    assert_redirected_to modulo_path(assigns(:modulo))
  end

  test "should show modulo" do
    get :show, id: @modulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modulo
    assert_response :success
  end

  test "should update modulo" do
    patch :update, id: @modulo, modulo: { description: @modulo.description, name: @modulo.name, status: @modulo.status }
    assert_redirected_to modulo_path(assigns(:modulo))
  end

  test "should destroy modulo" do
    assert_difference('Modulo.count', -1) do
      delete :destroy, id: @modulo
    end

    assert_redirected_to modulos_path
  end
end
