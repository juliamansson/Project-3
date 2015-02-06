require 'test_helper'

class FlavoursControllerTest < ActionController::TestCase
  setup do
    @flavour = flavours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flavours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flavour" do
    assert_difference('Flavour.count') do
      post :create, flavour: { cupcake_section_id: @flavour.cupcake_section_id, name: @flavour.name }
    end

    assert_redirected_to flavour_path(assigns(:flavour))
  end

  test "should show flavour" do
    get :show, id: @flavour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flavour
    assert_response :success
  end

  test "should update flavour" do
    patch :update, id: @flavour, flavour: { cupcake_section_id: @flavour.cupcake_section_id, name: @flavour.name }
    assert_redirected_to flavour_path(assigns(:flavour))
  end

  test "should destroy flavour" do
    assert_difference('Flavour.count', -1) do
      delete :destroy, id: @flavour
    end

    assert_redirected_to flavours_path
  end
end
