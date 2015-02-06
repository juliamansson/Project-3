require 'test_helper'

class CupcakeSectionsControllerTest < ActionController::TestCase
  setup do
    @cupcake_section = cupcake_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupcake_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupcake_section" do
    assert_difference('CupcakeSection.count') do
      post :create, cupcake_section: { name: @cupcake_section.name }
    end

    assert_redirected_to cupcake_section_path(assigns(:cupcake_section))
  end

  test "should show cupcake_section" do
    get :show, id: @cupcake_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupcake_section
    assert_response :success
  end

  test "should update cupcake_section" do
    patch :update, id: @cupcake_section, cupcake_section: { name: @cupcake_section.name }
    assert_redirected_to cupcake_section_path(assigns(:cupcake_section))
  end

  test "should destroy cupcake_section" do
    assert_difference('CupcakeSection.count', -1) do
      delete :destroy, id: @cupcake_section
    end

    assert_redirected_to cupcake_sections_path
  end
end
