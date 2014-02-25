require 'test_helper'

class HillsControllerTest < ActionController::TestCase
  setup do
    @hill = hills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hill" do
    assert_difference('Hill.count') do
      post :create, hill: { book: @hill.book, grid_ref: @hill.grid_ref, height: @hill.height, number: @hill.number, map: @hill.map, name: @hill.name, origin: @hill.origin, other_info: @hill.other_info }
    end

    assert_redirected_to hill_path(assigns(:hill))
  end

  test "should show hill" do
    get :show, id: @hill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hill
    assert_response :success
  end

  test "should update hill" do
    patch :update, id: @hill, hill: { book: @hill.book, grid_ref: @hill.grid_ref, height: @hill.height, number: @hill.number, map: @hill.map, name: @hill.name, origin: @hill.origin, other_info: @hill.other_info }
    assert_redirected_to hill_path(assigns(:hill))
  end

  test "should destroy hill" do
    assert_difference('Hill.count', -1) do
      delete :destroy, id: @hill
    end

    assert_redirected_to hills_path
  end
end
