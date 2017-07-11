require 'test_helper'

class StarshipsControllerTest < ActionController::TestCase
  setup do
    @starship = starships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:starships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create starship" do
    assert_difference('Starship.count') do
      post :create, starship: { name: @starship.name }
    end

    assert_redirected_to starship_path(assigns(:starship))
  end

  test "should show starship" do
    get :show, id: @starship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @starship
    assert_response :success
  end

  test "should update starship" do
    patch :update, id: @starship, starship: { name: @starship.name }
    assert_redirected_to starship_path(assigns(:starship))
  end

  test "should destroy starship" do
    assert_difference('Starship.count', -1) do
      delete :destroy, id: @starship
    end

    assert_redirected_to starships_path
  end
end
