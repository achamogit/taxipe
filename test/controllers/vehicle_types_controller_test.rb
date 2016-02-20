require 'test_helper'

class VehicleTypesControllerTest < ActionController::TestCase
  setup do
    @vehicle_type = vehicle_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_type" do
    assert_difference('VehicleType.count') do
      post :create, vehicle_type: { name: @vehicle_type.name }
    end

    assert_redirected_to vehicle_type_path(assigns(:vehicle_type))
  end

  test "should show vehicle_type" do
    get :show, id: @vehicle_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_type
    assert_response :success
  end

  test "should update vehicle_type" do
    patch :update, id: @vehicle_type, vehicle_type: { name: @vehicle_type.name }
    assert_redirected_to vehicle_type_path(assigns(:vehicle_type))
  end

  test "should destroy vehicle_type" do
    assert_difference('VehicleType.count', -1) do
      delete :destroy, id: @vehicle_type
    end

    assert_redirected_to vehicle_types_path
  end
end
