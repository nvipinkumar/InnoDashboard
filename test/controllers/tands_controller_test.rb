require 'test_helper'

class TandsControllerTest < ActionController::TestCase
  setup do
    @tand = tands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tand" do
    assert_difference('Tand.count') do
      post :create, tand: { Action: @tand.Action, Comments: @tand.Comments, Description: @tand.Description, Imperative: @tand.Imperative, Name: @tand.Name, Owner: @tand.Owner, Reviewed: @tand.Reviewed, Status: @tand.Status, Summary: @tand.Summary }
    end

    assert_redirected_to tand_path(assigns(:tand))
  end

  test "should show tand" do
    get :show, id: @tand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tand
    assert_response :success
  end

  test "should update tand" do
    patch :update, id: @tand, tand: { Action: @tand.Action, Comments: @tand.Comments, Description: @tand.Description, Imperative: @tand.Imperative, Name: @tand.Name, Owner: @tand.Owner, Reviewed: @tand.Reviewed, Status: @tand.Status, Summary: @tand.Summary }
    assert_redirected_to tand_path(assigns(:tand))
  end

  test "should destroy tand" do
    assert_difference('Tand.count', -1) do
      delete :destroy, id: @tand
    end

    assert_redirected_to tands_path
  end
end
