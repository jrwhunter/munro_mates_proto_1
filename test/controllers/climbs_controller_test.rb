require 'test_helper'

class ClimbsControllerTest < ActionController::TestCase
  setup do
    @climb = climbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:climbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create climb" do
    assert_difference('Climb.count') do
      post :create, climb: { comments: @climb.comments, date: @climb.date, hill_number: @climb.hill_number, user_name: @climb.user_name }
    end

    assert_redirected_to climb_path(assigns(:climb))
  end

  test "should show climb" do
    get :show, id: @climb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @climb
    assert_response :success
  end

  test "should update climb" do
    patch :update, id: @climb, climb: { comments: @climb.comments, date: @climb.date, hill_number: @climb.hill_number, user_name: @climb.user_name }
    assert_redirected_to climb_path(assigns(:climb))
  end

  test "should destroy climb" do
    assert_difference('Climb.count', -1) do
      delete :destroy, id: @climb
    end

    assert_redirected_to climbs_path
  end
end
