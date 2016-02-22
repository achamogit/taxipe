require 'test_helper'

class DriversControllerTest < ActionController::TestCase
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver" do
    assert_difference('Driver.count') do
      post :create, driver: { age: @driver.age, datebirthday: @driver.datebirthday, document: @driver.document, firstname: @driver.firstname, lastname: @driver.lastname, license: @driver.license, phone: @driver.phone, rating: @driver.rating, state_id: @driver.state_id, yearexperience: @driver.yearexperience }
    end

    assert_redirected_to driver_path(assigns(:driver))
  end

  test "should show driver" do
    get :show, id: @driver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver
    assert_response :success
  end

  test "should update driver" do
    patch :update, id: @driver, driver: { age: @driver.age, datebirthday: @driver.datebirthday, document: @driver.document, firstname: @driver.firstname, lastname: @driver.lastname, license: @driver.license, phone: @driver.phone, rating: @driver.rating, state_id: @driver.state_id, yearexperience: @driver.yearexperience }
    assert_redirected_to driver_path(assigns(:driver))
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete :destroy, id: @driver
    end

    assert_redirected_to drivers_path
  end
end
