require 'test_helper'

class PandesControllerTest < ActionController::TestCase
  setup do
    @pande = pandes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pandes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pande" do
    assert_difference('Pande.count') do
      post :create, pande: { Action: @pande.Action, Comments: @pande.Comments, Description: @pande.Description, Imperative: @pande.Imperative, Name: @pande.Name, Owner: @pande.Owner, Reviewed: @pande.Reviewed, Status: @pande.Status, Summary: @pande.Summary }
    end

    assert_redirected_to pande_path(assigns(:pande))
  end

  test "should show pande" do
    get :show, id: @pande
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pande
    assert_response :success
  end

  test "should update pande" do
    patch :update, id: @pande, pande: { Action: @pande.Action, Comments: @pande.Comments, Description: @pande.Description, Imperative: @pande.Imperative, Name: @pande.Name, Owner: @pande.Owner, Reviewed: @pande.Reviewed, Status: @pande.Status, Summary: @pande.Summary }
    assert_redirected_to pande_path(assigns(:pande))
  end

  test "should destroy pande" do
    assert_difference('Pande.count', -1) do
      delete :destroy, id: @pande
    end

    assert_redirected_to pandes_path
  end
end
