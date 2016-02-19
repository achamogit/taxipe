require 'test_helper'

class ModuleProfilesControllerTest < ActionController::TestCase
  setup do
    @module_profile = module_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:module_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create module_profile" do
    assert_difference('ModuleProfile.count') do
      post :create, module_profile: { idmodulo: @module_profile.idmodulo, idperfil: @module_profile.idperfil }
    end

    assert_redirected_to module_profile_path(assigns(:module_profile))
  end

  test "should show module_profile" do
    get :show, id: @module_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @module_profile
    assert_response :success
  end

  test "should update module_profile" do
    patch :update, id: @module_profile, module_profile: { idmodulo: @module_profile.idmodulo, idperfil: @module_profile.idperfil }
    assert_redirected_to module_profile_path(assigns(:module_profile))
  end

  test "should destroy module_profile" do
    assert_difference('ModuleProfile.count', -1) do
      delete :destroy, id: @module_profile
    end

    assert_redirected_to module_profiles_path
  end
end
