require 'test_helper'

class CustomisationsControllerTest < ActionController::TestCase
  setup do
    @customisation = customisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customisation" do
    assert_difference('Customisation.count') do
      post :create, customisation: { cupcake_section_id: @customisation.cupcake_section_id, flavour_id: @customisation.flavour_id, name: @customisation.name, order_id: @customisation.order_id }
    end

    assert_redirected_to customisation_path(assigns(:customisation))
  end

  test "should show customisation" do
    get :show, id: @customisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customisation
    assert_response :success
  end

  test "should update customisation" do
    patch :update, id: @customisation, customisation: { cupcake_section_id: @customisation.cupcake_section_id, flavour_id: @customisation.flavour_id, name: @customisation.name, order_id: @customisation.order_id }
    assert_redirected_to customisation_path(assigns(:customisation))
  end

  test "should destroy customisation" do
    assert_difference('Customisation.count', -1) do
      delete :destroy, id: @customisation
    end

    assert_redirected_to customisations_path
  end
end
