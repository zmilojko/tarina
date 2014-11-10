require 'test_helper'

class BoohsControllerTest < ActionController::TestCase
  setup do
    @booh = boohs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boohs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booh" do
    assert_difference('Booh.count') do
      post :create, booh: { title: @booh.title }
    end

    assert_redirected_to booh_path(assigns(:booh))
  end

  test "should show booh" do
    get :show, id: @booh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booh
    assert_response :success
  end

  test "should update booh" do
    patch :update, id: @booh, booh: { title: @booh.title }
    assert_redirected_to booh_path(assigns(:booh))
  end

  test "should destroy booh" do
    assert_difference('Booh.count', -1) do
      delete :destroy, id: @booh
    end

    assert_redirected_to boohs_path
  end
end
