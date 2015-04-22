require 'test_helper'

class KandcsControllerTest < ActionController::TestCase
  setup do
    @kandc = kandcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kandcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kandc" do
    assert_difference('Kandc.count') do
      post :create, kandc: { Action: @kandc.Action, Comments: @kandc.Comments, Description: @kandc.Description, Imperative: @kandc.Imperative, Name: @kandc.Name, Owner: @kandc.Owner, Reviewed: @kandc.Reviewed, Status: @kandc.Status, Summary: @kandc.Summary }
    end

    assert_redirected_to kandc_path(assigns(:kandc))
  end

  test "should show kandc" do
    get :show, id: @kandc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kandc
    assert_response :success
  end

  test "should update kandc" do
    patch :update, id: @kandc, kandc: { Action: @kandc.Action, Comments: @kandc.Comments, Description: @kandc.Description, Imperative: @kandc.Imperative, Name: @kandc.Name, Owner: @kandc.Owner, Reviewed: @kandc.Reviewed, Status: @kandc.Status, Summary: @kandc.Summary }
    assert_redirected_to kandc_path(assigns(:kandc))
  end

  test "should destroy kandc" do
    assert_difference('Kandc.count', -1) do
      delete :destroy, id: @kandc
    end

    assert_redirected_to kandcs_path
  end
end
