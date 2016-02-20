require 'test_helper'

class VehicleBrandsControllerTest < ActionController::TestCase
  setup do
    @vehicle_brand = vehicle_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_brand" do
    assert_difference('VehicleBrand.count') do
      post :create, vehicle_brand: { name: @vehicle_brand.name }
    end

    assert_redirected_to vehicle_brand_path(assigns(:vehicle_brand))
  end

  test "should show vehicle_brand" do
    get :show, id: @vehicle_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_brand
    assert_response :success
  end

  test "should update vehicle_brand" do
    patch :update, id: @vehicle_brand, vehicle_brand: { name: @vehicle_brand.name }
    assert_redirected_to vehicle_brand_path(assigns(:vehicle_brand))
  end

  test "should destroy vehicle_brand" do
    assert_difference('VehicleBrand.count', -1) do
      delete :destroy, id: @vehicle_brand
    end

    assert_redirected_to vehicle_brands_path
  end
end
