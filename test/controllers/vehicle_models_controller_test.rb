require 'test_helper'

class VehicleModelsControllerTest < ActionController::TestCase
  setup do
    @vehicle_model = vehicle_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_model" do
    assert_difference('VehicleModel.count') do
      post :create, vehicle_model: { name: @vehicle_model.name, vehicle_brand_id: @vehicle_model.vehicle_brand_id }
    end

    assert_redirected_to vehicle_model_path(assigns(:vehicle_model))
  end

  test "should show vehicle_model" do
    get :show, id: @vehicle_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_model
    assert_response :success
  end

  test "should update vehicle_model" do
    patch :update, id: @vehicle_model, vehicle_model: { name: @vehicle_model.name, vehicle_brand_id: @vehicle_model.vehicle_brand_id }
    assert_redirected_to vehicle_model_path(assigns(:vehicle_model))
  end

  test "should destroy vehicle_model" do
    assert_difference('VehicleModel.count', -1) do
      delete :destroy, id: @vehicle_model
    end

    assert_redirected_to vehicle_models_path
  end
end
