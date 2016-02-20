require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { numberseat: @vehicle.numberseat, placa: @vehicle.placa, state_id: @vehicle.state_id, vehicle_brand_id: @vehicle.vehicle_brand_id, vehicle_model_id: @vehicle.vehicle_model_id, vehicle_type_id: @vehicle.vehicle_type_id, year: @vehicle.year }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { numberseat: @vehicle.numberseat, placa: @vehicle.placa, state_id: @vehicle.state_id, vehicle_brand_id: @vehicle.vehicle_brand_id, vehicle_model_id: @vehicle.vehicle_model_id, vehicle_type_id: @vehicle.vehicle_type_id, year: @vehicle.year }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
